
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modrm {int type; } ;
typedef enum vec_arg { ____Placeholder_vec_arg } vec_arg ;
typedef enum arg { ____Placeholder_arg } arg ;







 int die (char*) ;
 int modrm_reg ;
 int vec_arg_imm ;
 int vec_arg_mem ;
 int vec_arg_reg ;
 int vec_arg_xmm ;

__attribute__((used)) static inline enum vec_arg vecarg(enum arg arg, struct modrm *modrm) {
    switch (arg) {
        case 131:
            return vec_arg_reg;
        case 132:
            return vec_arg_imm;
        case 129:
            return vec_arg_xmm;
        case 130:
            if (modrm->type == modrm_reg)
                return vec_arg_reg;
            return vec_arg_mem;
        case 128:
            if (modrm->type == modrm_reg)
                return vec_arg_xmm;
            return vec_arg_mem;
        default:
            die("unimplemented vecarg");
    }
}
