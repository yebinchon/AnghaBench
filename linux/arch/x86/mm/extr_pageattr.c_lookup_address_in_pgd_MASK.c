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
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned int PG_LEVEL_1G ; 
 unsigned int PG_LEVEL_2M ; 
 unsigned int PG_LEVEL_4K ; 
 unsigned int PG_LEVEL_512G ; 
 unsigned int PG_LEVEL_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

pte_t *FUNC14(pgd_t *pgd, unsigned long address,
			     unsigned int *level)
{
	p4d_t *p4d;
	pud_t *pud;
	pmd_t *pmd;

	*level = PG_LEVEL_NONE;

	if (FUNC4(*pgd))
		return NULL;

	p4d = FUNC2(pgd, address);
	if (FUNC1(*p4d))
		return NULL;

	*level = PG_LEVEL_512G;
	if (FUNC0(*p4d) || !FUNC3(*p4d))
		return (pte_t *)p4d;

	pud = FUNC12(p4d, address);
	if (FUNC11(*pud))
		return NULL;

	*level = PG_LEVEL_1G;
	if (FUNC10(*pud) || !FUNC13(*pud))
		return (pte_t *)pud;

	pmd = FUNC7(pud, address);
	if (FUNC6(*pmd))
		return NULL;

	*level = PG_LEVEL_2M;
	if (FUNC5(*pmd) || !FUNC8(*pmd))
		return (pte_t *)pmd;

	*level = PG_LEVEL_4K;

	return FUNC9(pmd, address);
}