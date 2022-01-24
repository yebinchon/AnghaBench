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
struct cpuinfo_x86 {int /*<<< orphan*/  loops_per_jiffy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CX86_CCR5 ; 
 int Cx86_dir0_msb ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  loops_per_jiffy ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC6(struct cpuinfo_x86 *c)
{
	unsigned long flags;

	if (Cx86_dir0_msb == 3) {
		unsigned char ccr3, ccr5;

		FUNC3(flags);
		ccr3 = FUNC1(CX86_CCR3);
		FUNC5(CX86_CCR3, (ccr3 & 0x0f) | 0x10); /* enable MAPEN */
		ccr5 = FUNC1(CX86_CCR5);
		if (ccr5 & 2)
			FUNC5(CX86_CCR5, ccr5 & 0xfd);  /* reset SLOP */
		FUNC5(CX86_CCR3, ccr3);                 /* disable MAPEN */
		FUNC2(flags);

		if (ccr5 & 2) { /* possible wrong calibration done */
			FUNC4("Recalibrating delay loop with SLOP bit reset\n");
			FUNC0();
			c->loops_per_jiffy = loops_per_jiffy;
		}
	}
}