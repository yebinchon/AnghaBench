#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tlb {int dummy; } ;
struct regptr {int dummy; } ;
struct modrm {scalar_t__ reg; scalar_t__ base; scalar_t__ type; scalar_t__ index; int shift; scalar_t__ offset; } ;
struct cpu_state {int /*<<< orphan*/  eip; } ;
typedef  int addr_t ;

/* Variables and functions */
 int FUNC0 (struct regptr,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tlb*,struct modrm*) ; 
 scalar_t__ modrm_mem_si ; 
 scalar_t__ modrm_reg ; 
 scalar_t__ reg_none ; 
 struct regptr FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct cpu_state *cpu, struct tlb *tlb, addr_t *addr_out,
        struct modrm *modrm, struct regptr *modrm_regptr, struct regptr *modrm_base) {
    if (!FUNC1(&cpu->eip, tlb, modrm))
        return false;
    *modrm_regptr = FUNC2(modrm->reg);
    *modrm_base = FUNC2(modrm->base);
    if (modrm->type == modrm_reg)
        return true;

    if (modrm->base != reg_none)
        *addr_out += FUNC0(*modrm_base, 32);
    *addr_out += modrm->offset;
    if (modrm->type == modrm_mem_si) {
        struct regptr index_reg = FUNC2(modrm->index);
        *addr_out += FUNC0(index_reg, 32) << modrm->shift;
    }
    return true;
}