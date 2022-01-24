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
struct cpuinfo_x86 {int x86; int /*<<< orphan*/  x86_vendor; int /*<<< orphan*/  x86_vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX86_CCR3 ; 
 int /*<<< orphan*/  CX86_CCR4 ; 
 int /*<<< orphan*/  X86_VENDOR_CYRIX ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct cpuinfo_x86 *c)
{
	/* Detect Cyrix with disabled CPUID */
	if (c->x86 == 4 && FUNC7()) {
		unsigned char dir0, dir1;

		FUNC6(c->x86_vendor_id, "CyrixInstead");
		c->x86_vendor = X86_VENDOR_CYRIX;

		/* Actually enable cpuid on the older cyrix */

		/* Retrieve CPU revisions */

		FUNC0(&dir0, &dir1);

		dir0 >>= 4;

		/* Check it is an affected model */

		if (dir0 == 5 || dir0 == 3) {
			unsigned char ccr3;
			unsigned long flags;
			FUNC4("Enabling CPUID on Cyrix processor.\n");
			FUNC3(flags);
			ccr3 = FUNC1(CX86_CCR3);
			/* enable MAPEN  */
			FUNC5(CX86_CCR3, (ccr3 & 0x0f) | 0x10);
			/* enable cpuid  */
			FUNC5(CX86_CCR4, FUNC1(CX86_CCR4) | 0x80);
			/* disable MAPEN */
			FUNC5(CX86_CCR3, ccr3);
			FUNC2(flags);
		}
	}
}