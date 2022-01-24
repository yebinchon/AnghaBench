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
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_cpu {struct clk_hw hw; struct clk* step; struct clk* pll; struct clk* mux; struct clk* div; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_IS_CRITICAL ; 
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_cpu_ops ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_cpu*) ; 
 struct clk_cpu* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct clk_hw *FUNC4(const char *name, const char *parent_name,
		struct clk *div, struct clk *mux, struct clk *pll,
		struct clk *step)
{
	struct clk_cpu *cpu;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	cpu = FUNC3(sizeof(*cpu), GFP_KERNEL);
	if (!cpu)
		return FUNC0(-ENOMEM);

	cpu->div = div;
	cpu->mux = mux;
	cpu->pll = pll;
	cpu->step = step;

	init.name = name;
	init.ops = &clk_cpu_ops;
	init.flags = CLK_IS_CRITICAL;
	init.parent_names = &parent_name;
	init.num_parents = 1;

	cpu->hw.init = &init;
	hw = &cpu->hw;

	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC2(cpu);
		return FUNC0(ret);
	}

	return hw;
}