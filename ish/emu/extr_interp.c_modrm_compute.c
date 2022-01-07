
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb {int dummy; } ;
struct regptr {int dummy; } ;
struct modrm {scalar_t__ reg; scalar_t__ base; scalar_t__ type; scalar_t__ index; int shift; scalar_t__ offset; } ;
struct cpu_state {int eip; } ;
typedef int addr_t ;


 int REGISTER (struct regptr,int) ;
 int modrm_decode32 (int *,struct tlb*,struct modrm*) ;
 scalar_t__ modrm_mem_si ;
 scalar_t__ modrm_reg ;
 scalar_t__ reg_none ;
 struct regptr regptr_from_reg (scalar_t__) ;

__attribute__((used)) static bool modrm_compute(struct cpu_state *cpu, struct tlb *tlb, addr_t *addr_out,
        struct modrm *modrm, struct regptr *modrm_regptr, struct regptr *modrm_base) {
    if (!modrm_decode32(&cpu->eip, tlb, modrm))
        return 0;
    *modrm_regptr = regptr_from_reg(modrm->reg);
    *modrm_base = regptr_from_reg(modrm->base);
    if (modrm->type == modrm_reg)
        return 1;

    if (modrm->base != reg_none)
        *addr_out += REGISTER(*modrm_base, 32);
    *addr_out += modrm->offset;
    if (modrm->type == modrm_mem_si) {
        struct regptr index_reg = regptr_from_reg(modrm->index);
        *addr_out += REGISTER(index_reg, 32) << modrm->shift;
    }
    return 1;
}
