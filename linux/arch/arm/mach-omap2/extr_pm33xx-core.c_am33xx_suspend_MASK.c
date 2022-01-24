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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,int (*) (unsigned long)) ; 
 int /*<<< orphan*/  gfx_l4ls_clkdm ; 

__attribute__((used)) static int FUNC5(unsigned int state, int (*fn)(unsigned long),
			  unsigned long args)
{
	int ret = 0;

	FUNC1();
	ret = FUNC4(args, fn);
	FUNC0();

	/*
	 * BUG: GFX_L4LS clock domain needs to be woken up to
	 * ensure thet L4LS clock domain does not get stuck in
	 * transition. If that happens L3 module does not get
	 * disabled, thereby leading to PER power domain
	 * transition failing
	 */

	FUNC3(gfx_l4ls_clkdm);
	FUNC2(gfx_l4ls_clkdm);

	return ret;
}