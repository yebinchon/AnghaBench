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
struct page {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_FTR_HPTE_TABLE ; 
 int /*<<< orphan*/  PG_arch_1 ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 () ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static pte_t FUNC11(pte_t pte)
{
	struct page *pg;

	if (FUNC3(MMU_FTR_HPTE_TABLE))
		return FUNC8(pte);

	/* No exec permission in the first place, move on */
	if (!FUNC4(pte) || !FUNC6(pte))
		return pte;

	/* If you set _PAGE_EXEC on weird pages you're on your own */
	pg = FUNC2(pte);
	if (FUNC10(!pg))
		return pte;

	/* If the page clean, we move on */
	if (FUNC9(PG_arch_1, &pg->flags))
		return pte;

	/* If it's an exec fault, we flush the cache and make it clean */
	if (FUNC1()) {
		FUNC0(pg);
		FUNC7(PG_arch_1, &pg->flags);
		return pte;
	}

	/* Else, we filter out _PAGE_EXEC */
	return FUNC5(pte);
}