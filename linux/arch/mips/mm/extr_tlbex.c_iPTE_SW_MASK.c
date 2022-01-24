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
typedef  int /*<<< orphan*/  u32 ;
struct uasm_reloc {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CONFIG_XPA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int _PAGE_DIRTY ; 
 unsigned int _PAGE_VALID ; 
 scalar_t__ cpu_has_64bits ; 
 int /*<<< orphan*/  label_smp_pgtable_change ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,struct uasm_reloc**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,struct uasm_reloc**,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(u32 **p, struct uasm_reloc **r, unsigned int pte, unsigned int ptr,
	unsigned int mode, unsigned int scratch)
{
	unsigned int hwmode = mode & (_PAGE_VALID | _PAGE_DIRTY);
	unsigned int swmode = mode & ~hwmode;

	if (FUNC1(CONFIG_XPA) && !cpu_has_64bits) {
		FUNC6(p, scratch, swmode >> 16);
		FUNC9(p, pte, pte, scratch);
		FUNC0(swmode & 0xffff);
	} else {
		FUNC10(p, pte, pte, mode);
	}

#ifdef CONFIG_SMP
# ifdef CONFIG_PHYS_ADDR_T_64BIT
	if (cpu_has_64bits)
		uasm_i_scd(p, pte, 0, ptr);
	else
# endif
		UASM_i_SC(p, pte, 0, ptr);

	if (r10000_llsc_war())
		uasm_il_beqzl(p, r, pte, label_smp_pgtable_change);
	else
		uasm_il_beqz(p, r, pte, label_smp_pgtable_change);

# ifdef CONFIG_PHYS_ADDR_T_64BIT
	if (!cpu_has_64bits) {
		/* no uasm_i_nop needed */
		uasm_i_ll(p, pte, sizeof(pte_t) / 2, ptr);
		uasm_i_ori(p, pte, pte, hwmode);
		BUG_ON(hwmode & ~0xffff);
		uasm_i_sc(p, pte, sizeof(pte_t) / 2, ptr);
		uasm_il_beqz(p, r, pte, label_smp_pgtable_change);
		/* no uasm_i_nop needed */
		uasm_i_lw(p, pte, 0, ptr);
	} else
		uasm_i_nop(p);
# else
	uasm_i_nop(p);
# endif
#else
# ifdef CONFIG_PHYS_ADDR_T_64BIT
	if (cpu_has_64bits)
		uasm_i_sd(p, pte, 0, ptr);
	else
# endif
		FUNC3(p, pte, 0, ptr);

# ifdef CONFIG_PHYS_ADDR_T_64BIT
	if (!cpu_has_64bits) {
		uasm_i_lw(p, pte, sizeof(pte_t) / 2, ptr);
		uasm_i_ori(p, pte, pte, hwmode);
		BUG_ON(hwmode & ~0xffff);
		uasm_i_sw(p, pte, sizeof(pte_t) / 2, ptr);
		uasm_i_lw(p, pte, 0, ptr);
	}
# endif
#endif
}