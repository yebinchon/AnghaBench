#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_3__ {int /*<<< orphan*/  p2m_generation; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* HYPERVISOR_shared_info ; 
 int PAGE_SHIFT ; 
 int PMDS_PER_MID_PAGE ; 
 int PMD_SIZE ; 
 int _KERNPG_TABLE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_mm ; 
 int /*<<< orphan*/ * FUNC6 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  p2m_update_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static pte_t *FUNC14(unsigned long addr, pte_t *pte_pg)
{
	pte_t *ptechk;
	pte_t *pte_newpg[PMDS_PER_MID_PAGE];
	pmd_t *pmdp;
	unsigned int level;
	unsigned long flags;
	unsigned long vaddr;
	int i;

	/* Do all allocations first to bail out in error case. */
	for (i = 0; i < PMDS_PER_MID_PAGE; i++) {
		pte_newpg[i] = FUNC3();
		if (!pte_newpg[i]) {
			for (i--; i >= 0; i--)
				FUNC5(pte_newpg[i]);

			return NULL;
		}
	}

	vaddr = addr & ~(PMD_SIZE * PMDS_PER_MID_PAGE - 1);

	for (i = 0; i < PMDS_PER_MID_PAGE; i++) {
		FUNC4(pte_newpg[i], pte_pg);
		FUNC8(&init_mm, FUNC1(pte_newpg[i]) >> PAGE_SHIFT);

		pmdp = FUNC7(vaddr);
		FUNC0(!pmdp);

		FUNC11(&p2m_update_lock, flags);

		ptechk = FUNC6(vaddr, &level);
		if (ptechk == pte_pg) {
			HYPERVISOR_shared_info->arch.p2m_generation++;
			FUNC13(); /* Tools are synchronizing via p2m_generation. */
			FUNC10(pmdp,
				FUNC2(FUNC1(pte_newpg[i]) | _KERNPG_TABLE));
			FUNC13(); /* Tools are synchronizing via p2m_generation. */
			HYPERVISOR_shared_info->arch.p2m_generation++;
			pte_newpg[i] = NULL;
		}

		FUNC12(&p2m_update_lock, flags);

		if (pte_newpg[i]) {
			FUNC9(FUNC1(pte_newpg[i]) >> PAGE_SHIFT);
			FUNC5(pte_newpg[i]);
		}

		vaddr += PMD_SIZE;
	}

	return FUNC6(addr, &level);
}