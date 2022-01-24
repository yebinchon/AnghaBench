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
struct cpa_data {unsigned int numpages; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int _PAGE_PRESENT ; 
 unsigned long FUNC1 (struct cpa_data*,unsigned int) ; 
 int /*<<< orphan*/  __cpa_flush_tlb ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  early_boot_irqs_disabled ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (unsigned long,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cpa_data*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int tlb_single_page_flush_ceiling ; 

__attribute__((used)) static void FUNC12(struct cpa_data *data, int cache)
{
	struct cpa_data *cpa = data;
	unsigned int i;

	FUNC0(FUNC6() && !early_boot_irqs_disabled);

	if (cache && !FUNC11(X86_FEATURE_CLFLUSH)) {
		FUNC3(cache);
		return;
	}

	if (cpa->numpages <= tlb_single_page_flush_ceiling)
		FUNC9(__cpa_flush_tlb, cpa, 1);
	else
		FUNC5();

	if (!cache)
		return;

	FUNC8();
	for (i = 0; i < cpa->numpages; i++) {
		unsigned long addr = FUNC1(cpa, i);
		unsigned int level;

		pte_t *pte = FUNC7(addr, &level);

		/*
		 * Only flush present addresses:
		 */
		if (pte && (FUNC10(*pte) & _PAGE_PRESENT))
			FUNC2((void *)FUNC4(addr), PAGE_SIZE);
	}
	FUNC8();
}