
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uint64_t ;
struct modrm {int reg; int base; int * offset; int type; } ;
struct gen_state {int dummy; } ;
typedef int * gadget_t ;
typedef enum arg { ____Placeholder_arg } arg ;
typedef int * dword_t ;


 int GEN (int *) ;
 int UNDEFINED ;

 int arg_addr ;
 int arg_count ;
 int arg_imm ;
 int arg_mem ;



 int arg_reg_a ;
 int gen_addr (struct gen_state*,struct modrm*,int,int *) ;
 int modrm_mem ;
 int modrm_reg ;
 int reg_none ;
 int sz (int) ;

__attribute__((used)) static inline bool gen_op(struct gen_state *state, gadget_t *gadgets, enum arg arg, struct modrm *modrm, uint64_t *imm, int size, dword_t saved_ip, bool seg_gs, dword_t addr_offset) {
    size = sz(size);
    gadgets = gadgets + size * arg_count;

    switch (arg) {
        case 129:

            arg = modrm->reg + arg_reg_a; break;
        case 128:
            if (modrm->type == modrm_reg)
                arg = modrm->base + arg_reg_a;
            else
                arg = arg_mem;
            break;
        case 130:
            arg = arg_mem;
            modrm->type = modrm_mem;
            modrm->base = reg_none;
            modrm->offset = addr_offset;
            break;
        case 131:
            arg = arg_imm;
            *imm = 1;
            break;
    }
    if (arg >= arg_count || gadgets[arg] == ((void*)0)) {
        UNDEFINED;
    }
    if (arg == arg_mem || arg == arg_addr) {
        if (!gen_addr(state, modrm, seg_gs, saved_ip))
            return 0;
    }
    GEN(gadgets[arg]);
    if (arg == arg_imm)
        GEN(*imm);
    else if (arg == arg_mem)
        GEN(saved_ip);
    return 1;
}
