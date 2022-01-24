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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR2 ; 
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CX86_CCR4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long flags;
	u8 ccr3;
	FUNC2(flags);

	/* Suspend on halt power saving and enable #SUSP pin */
	FUNC3(CX86_CCR2, FUNC0(CX86_CCR2) | 0x88);

	ccr3 = FUNC0(CX86_CCR3);
	FUNC3(CX86_CCR3, (ccr3 & 0x0f) | 0x10);	/* enable MAPEN */


	/* FPU fast, DTE cache, Mem bypass */
	FUNC3(CX86_CCR4, FUNC0(CX86_CCR4) | 0x38);
	FUNC3(CX86_CCR3, ccr3);			/* disable MAPEN */

	FUNC4();
	FUNC5();

	FUNC1(flags);
}