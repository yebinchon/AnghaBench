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
struct kvm_mmu_memory_cache {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ invalid_pte_table ; 
 void* FUNC2 (struct kvm_mmu_memory_cache*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pte_t *FUNC13(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
				unsigned long addr)
{
	pud_t *pud;
	pmd_t *pmd;

	pgd += FUNC3(addr);
	if (FUNC4(*pgd)) {
		/* Not used on MIPS yet */
		FUNC0();
		return NULL;
	}
	pud = FUNC11(pgd, addr);
	if (FUNC10(*pud)) {
		pmd_t *new_pmd;

		if (!cache)
			return NULL;
		new_pmd = FUNC2(cache);
		FUNC5((unsigned long)new_pmd,
			 (unsigned long)invalid_pte_table);
		FUNC12(NULL, pud, new_pmd);
	}
	pmd = FUNC7(pud, addr);
	if (FUNC6(*pmd)) {
		pte_t *new_pte;

		if (!cache)
			return NULL;
		new_pte = FUNC2(cache);
		FUNC1(new_pte);
		FUNC8(NULL, pmd, new_pte);
	}
	return FUNC9(pmd, addr);
}