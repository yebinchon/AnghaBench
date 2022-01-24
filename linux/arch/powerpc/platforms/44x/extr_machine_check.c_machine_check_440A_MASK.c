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
typedef  int u32 ;
struct pt_regs {unsigned long dsisr; } ;

/* Variables and functions */
 unsigned long ESR_IMCP ; 
 int MCSR_DCFP ; 
 int MCSR_DCSP ; 
 int MCSR_DRB ; 
 int MCSR_DWB ; 
 int MCSR_IB ; 
 int MCSR_ICP ; 
 int MCSR_IMPE ; 
 int MCSR_TLBP ; 
 int /*<<< orphan*/  SPRN_ESR ; 
 int /*<<< orphan*/  SPRN_MCSR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct pt_regs *regs)
{
	unsigned long reason = regs->dsisr;

	FUNC3("Machine check in kernel mode.\n");
	if (reason & ESR_IMCP){
		FUNC3("Instruction Synchronous Machine Check exception\n");
		FUNC2(SPRN_ESR, reason & ~ESR_IMCP);
	}
	else {
		u32 mcsr = FUNC1(SPRN_MCSR);
		if (mcsr & MCSR_IB)
			FUNC3("Instruction Read PLB Error\n");
		if (mcsr & MCSR_DRB)
			FUNC3("Data Read PLB Error\n");
		if (mcsr & MCSR_DWB)
			FUNC3("Data Write PLB Error\n");
		if (mcsr & MCSR_TLBP)
			FUNC3("TLB Parity Error\n");
		if (mcsr & MCSR_ICP){
			FUNC0();
			FUNC3("I-Cache Parity Error\n");
		}
		if (mcsr & MCSR_DCSP)
			FUNC3("D-Cache Search Parity Error\n");
		if (mcsr & MCSR_DCFP)
			FUNC3("D-Cache Flush Parity Error\n");
		if (mcsr & MCSR_IMPE)
			FUNC3("Machine Check exception is imprecise\n");

		/* Clear MCSR */
		FUNC2(SPRN_MCSR, mcsr);
	}
	return 0;
}