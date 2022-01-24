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
struct cpa_data {int /*<<< orphan*/  pfn; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cpa_data *cpa,
			 unsigned long start, unsigned long end,
			 unsigned num_pages, pmd_t *pmd, pgprot_t pgprot)
{
	pte_t *pte;

	pte = FUNC2(pmd, start);

	pgprot = FUNC1(pgprot);

	while (num_pages-- && start < end) {
		FUNC3(pte, FUNC0(cpa->pfn, pgprot));

		start	 += PAGE_SIZE;
		cpa->pfn++;
		pte++;
	}
}