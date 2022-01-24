#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_7__ {scalar_t__ vmalloc_seq; } ;
struct TYPE_11__ {TYPE_1__ context; } ;
struct TYPE_10__ {TYPE_6__* active_mm; } ;
struct TYPE_8__ {scalar_t__ vmalloc_seq; } ;
struct TYPE_9__ {TYPE_2__ context; } ;

/* Variables and functions */
 scalar_t__ PMD_SIZE ; 
 int PMD_TYPE_MASK ; 
 int PMD_TYPE_TABLE ; 
 int SZ_1M ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 TYPE_3__ init_mm ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(unsigned long virt, unsigned long size)
{
	unsigned long addr = virt, end = virt + (size & ~(SZ_1M - 1));
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmdp;

	FUNC1(addr, end);
	pgd = FUNC3(addr);
	pud = FUNC10(pgd, addr);
	pmdp = FUNC6(pud, addr);
	do {
		pmd_t pmd = *pmdp;

		if (!FUNC5(pmd)) {
			/*
			 * Clear the PMD from the page table, and
			 * increment the vmalloc sequence so others
			 * notice this change.
			 *
			 * Note: this is still racy on SMP machines.
			 */
			FUNC4(pmdp);
			init_mm.context.vmalloc_seq++;

			/*
			 * Free the page table, if there was one.
			 */
			if ((FUNC8(pmd) & PMD_TYPE_MASK) == PMD_TYPE_TABLE)
				FUNC9(&init_mm, FUNC7(pmd));
		}

		addr += PMD_SIZE;
		pmdp += 2;
	} while (addr < end);

	/*
	 * Ensure that the active_mm is up to date - we want to
	 * catch any use-after-iounmap cases.
	 */
	if (current->active_mm->context.vmalloc_seq != init_mm.context.vmalloc_seq)
		FUNC0(current->active_mm);

	FUNC2(virt, end);
}