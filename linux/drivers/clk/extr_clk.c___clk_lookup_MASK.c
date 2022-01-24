#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk_core {TYPE_1__* hw; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk; } ;

/* Variables and functions */
 struct clk_core* FUNC0 (char const*) ; 

struct clk *FUNC1(const char *name)
{
	struct clk_core *core = FUNC0(name);

	return !core ? NULL : core->hw->clk;
}