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
typedef  unsigned int pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int L1_PPTB_mskBASE ; 
 int /*<<< orphan*/  NDS32_SR_L1_PPTB ; 
 unsigned int TLB_DATA_mskPPN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ cpu_resume ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int resume_addr ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	pgd_t *pgdv;
	pud_t *pudv;
	pmd_t *pmdv;
	pte_t *ptev;

	pgdv = (pgd_t *)FUNC1((FUNC0(NDS32_SR_L1_PPTB) &
		L1_PPTB_mskBASE)) + FUNC2((unsigned int)cpu_resume);

	pudv = FUNC5(pgdv, (unsigned int)cpu_resume);
	pmdv = FUNC3(pudv, (unsigned int)cpu_resume);
	ptev = FUNC4(pmdv, (unsigned int)cpu_resume);

	resume_addr = ((*ptev) & TLB_DATA_mskPPN)
			| ((unsigned int)cpu_resume & 0x00000fff);

	FUNC6();
}