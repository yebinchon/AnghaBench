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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct zynqmp_clk_gate {struct clk_hw hw; int /*<<< orphan*/  clk_id; int /*<<< orphan*/  flags; } ;
struct clock_topology {int /*<<< orphan*/  type_flag; int /*<<< orphan*/  flag; } ;
struct clk_init_data {char const* name; char const* const* parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct zynqmp_clk_gate*) ; 
 struct zynqmp_clk_gate* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zynqmp_clk_gate_ops ; 

struct clk_hw *FUNC4(const char *name, u32 clk_id,
					const char * const *parents,
					u8 num_parents,
					const struct clock_topology *nodes)
{
	struct zynqmp_clk_gate *gate;
	struct clk_hw *hw;
	int ret;
	struct clk_init_data init;

	/* allocate the gate */
	gate = FUNC3(sizeof(*gate), GFP_KERNEL);
	if (!gate)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &zynqmp_clk_gate_ops;
	init.flags = nodes->flag;
	init.parent_names = parents;
	init.num_parents = 1;

	/* struct clk_gate assignments */
	gate->flags = nodes->type_flag;
	gate->hw.init = &init;
	gate->clk_id = clk_id;

	hw = &gate->hw;
	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC2(gate);
		hw = FUNC0(ret);
	}

	return hw;
}