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
struct zynqmp_clk_mux {int flags; struct clk_hw hw; int /*<<< orphan*/  clk_id; } ;
struct clock_topology {int type_flag; int /*<<< orphan*/  flag; } ;
struct clk_init_data {char const* name; char const* const* parent_names; int /*<<< orphan*/  num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int CLK_MUX_READ_ONLY ; 
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 struct zynqmp_clk_mux* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zynqmp_clk_mux_ops ; 
 int /*<<< orphan*/  zynqmp_clk_mux_ro_ops ; 

struct clk_hw *FUNC4(const char *name, u32 clk_id,
				       const char * const *parents,
				       u8 num_parents,
				       const struct clock_topology *nodes)
{
	struct zynqmp_clk_mux *mux;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	mux = FUNC3(sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return FUNC0(-ENOMEM);

	init.name = name;
	if (nodes->type_flag & CLK_MUX_READ_ONLY)
		init.ops = &zynqmp_clk_mux_ro_ops;
	else
		init.ops = &zynqmp_clk_mux_ops;
	init.flags = nodes->flag;
	init.parent_names = parents;
	init.num_parents = num_parents;
	mux->flags = nodes->type_flag;
	mux->hw.init = &init;
	mux->clk_id = clk_id;

	hw = &mux->hw;
	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC2(hw);
		hw = FUNC0(ret);
	}

	return hw;
}