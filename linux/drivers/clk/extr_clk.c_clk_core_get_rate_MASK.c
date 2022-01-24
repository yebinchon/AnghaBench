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
struct clk_core {int flags; } ;

/* Variables and functions */
 int CLK_GET_RATE_NOCACHE ; 
 int /*<<< orphan*/  FUNC0 (struct clk_core*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_core *core)
{
	unsigned long rate;

	FUNC2();

	if (core && (core->flags & CLK_GET_RATE_NOCACHE))
		FUNC0(core, 0);

	rate = FUNC1(core);
	FUNC3();

	return rate;
}