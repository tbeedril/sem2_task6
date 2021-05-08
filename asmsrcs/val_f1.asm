global val_f1

section .text

val_f1:
    push ebp
    mov ebp, esp

    fldl2e
    fld qword[ebp + 8]
    fmulp
    
    fld1
    fscale
    fxch
    
    fld1
    fxch
    fprem
    f2xm1
    
    faddp
    fmulp

    fld1
    fld1
    faddp
    faddp
    
    mov esp, ebp
    pop ebp
    ret