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
struct cpuinfo_mips {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPS_CPU_DRG ; 
 int /*<<< orphan*/  MIPS_CPU_GUESTCTL0EXT ; 
 int /*<<< orphan*/  MIPS_CPU_GUESTCTL1 ; 
 int /*<<< orphan*/  MIPS_CPU_GUESTCTL2 ; 
 int /*<<< orphan*/  MIPS_CPU_GUESTID ; 
 unsigned int MIPS_GCTL0_DRG ; 
 unsigned int MIPS_GCTL0_G0E ; 
 unsigned int MIPS_GCTL0_G1 ; 
 unsigned int MIPS_GCTL0_G2 ; 
 unsigned int MIPS_GCTL0_RAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct cpuinfo_mips *c)
{
	unsigned int guestctl0, temp;

	guestctl0 = FUNC1();

	if (guestctl0 & MIPS_GCTL0_G0E)
		c->options |= MIPS_CPU_GUESTCTL0EXT;
	if (guestctl0 & MIPS_GCTL0_G1)
		c->options |= MIPS_CPU_GUESTCTL1;
	if (guestctl0 & MIPS_GCTL0_G2)
		c->options |= MIPS_CPU_GUESTCTL2;
	if (!(guestctl0 & MIPS_GCTL0_RAD)) {
		c->options |= MIPS_CPU_GUESTID;

		/*
		 * Probe for Direct Root to Guest (DRG). Set GuestCtl1.RID = 0
		 * first, otherwise all data accesses will be fully virtualised
		 * as if they were performed by guest mode.
		 */
		FUNC4(0);
		FUNC2();

		FUNC3(guestctl0 | MIPS_GCTL0_DRG);
		FUNC0();
		temp = FUNC1();

		if (temp & MIPS_GCTL0_DRG) {
			FUNC3(guestctl0);
			c->options |= MIPS_CPU_DRG;
		}
	}
}