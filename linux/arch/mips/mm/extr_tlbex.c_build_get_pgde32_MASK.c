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

/* Variables and functions */
 int /*<<< orphan*/  C0_BADVADDR ; 
 int /*<<< orphan*/  PGDIR_SHIFT ; 
 int /*<<< orphan*/  PGD_T_LOG2 ; 
 int /*<<< orphan*/  SMP_CPUID_PTRSHIFT ; 
 int /*<<< orphan*/  SMP_CPUID_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,unsigned int,long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ pgd_current ; 
 int pgd_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (long) ; 

void FUNC8(u32 **p, unsigned int tmp, unsigned int ptr)
{
	if (pgd_reg != -1) {
		/* pgd is in pgd_reg */
		FUNC4(p, ptr, FUNC1(), pgd_reg);
		FUNC4(p, tmp, C0_BADVADDR); /* get faulting address */
	} else {
		long pgdc = (long)pgd_current;

		/* 32 bit SMP has smp_processor_id() stored in CONTEXT. */
#ifdef CONFIG_SMP
		uasm_i_mfc0(p, ptr, SMP_CPUID_REG);
		UASM_i_LA_mostly(p, tmp, pgdc);
		uasm_i_srl(p, ptr, ptr, SMP_CPUID_PTRSHIFT);
		uasm_i_addu(p, ptr, tmp, ptr);
#else
		FUNC0(p, ptr, pgdc);
#endif
		FUNC4(p, tmp, C0_BADVADDR); /* get faulting address */
		FUNC3(p, ptr, FUNC7(pgdc), ptr);
	}
	FUNC6(p, tmp, tmp, PGDIR_SHIFT); /* get pgd only bits */
	FUNC5(p, tmp, tmp, PGD_T_LOG2);
	FUNC2(p, ptr, ptr, tmp); /* add in pgd offset */
}