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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ ALCHEMY_CPU_AU1300 ; 
 int /*<<< orphan*/  AU1000_SYS_CPUPLL ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	unsigned long t;

	/*
	 * On early Au1000, sys_cpupll was write-only. Since these
	 * silicon versions of Au1000 are not sold, we don't bend
	 * over backwards trying to determine the frequency.
	 */
	if (FUNC3(FUNC2()))
		t = 396000000;
	else {
		t = FUNC1(AU1000_SYS_CPUPLL) & 0x7f;
		if (FUNC0() < ALCHEMY_CPU_AU1300)
			t &= 0x3f;
		t *= parent_rate;
	}

	return t;
}