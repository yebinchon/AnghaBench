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

/* Variables and functions */
 int /*<<< orphan*/  CIF_NOHZ_DELAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
	unsigned long cregs[16];

	/* Handle possible pending IPIs */
	FUNC5();
	FUNC4(FUNC6(), false);
	/* Disable pseudo page faults on this cpu. */
	FUNC3();
	/* Disable interrupt sources via control register. */
	FUNC1(cregs, 0, 15);
	cregs[0]  &= ~0x0000ee70UL;	/* disable all external interrupts */
	cregs[6]  &= ~0xff000000UL;	/* disable all I/O interrupts */
	cregs[14] &= ~0x1f000000UL;	/* disable most machine checks */
	FUNC0(cregs, 0, 15);
	FUNC2(CIF_NOHZ_DELAY);
	return 0;
}