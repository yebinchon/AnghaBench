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
struct zynqmp_clk_divider {int is_frac; struct clk_hw hw; int /*<<< orphan*/  div_type; int /*<<< orphan*/  clk_id; int /*<<< orphan*/  flags; } ;
struct clock_topology {int flag; int /*<<< orphan*/  type; int /*<<< orphan*/  type_flag; } ;
struct clk_init_data {char const* name; int flags; char const* const* parent_names; int num_parents; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int CLK_FRAC ; 
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct zynqmp_clk_divider*) ; 
 struct zynqmp_clk_divider* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zynqmp_clk_divider_ops ; 

struct clk_hw *FUNC4(const char *name,
					   u32 clk_id,
					   const char * const *parents,
					   u8 num_parents,
					   const struct clock_topology *nodes)
{
	struct zynqmp_clk_divider *div;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	/* allocate the divider */
	div = FUNC3(sizeof(*div), GFP_KERNEL);
	if (!div)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &zynqmp_clk_divider_ops;
	/* CLK_FRAC is not defined in the common clk framework */
	init.flags = nodes->flag & ~CLK_FRAC;
	init.parent_names = parents;
	init.num_parents = 1;

	/* struct clk_divider assignments */
	div->is_frac = !!(nodes->flag & CLK_FRAC);
	div->flags = nodes->type_flag;
	div->hw.init = &init;
	div->clk_id = clk_id;
	div->div_type = nodes->type;

	hw = &div->hw;
	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC2(div);
		hw = FUNC0(ret);
	}

	return hw;
}