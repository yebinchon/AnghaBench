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
typedef  int u8 ;
typedef  int u32 ;
struct device_node {int /*<<< orphan*/  name; } ;
struct clk_omap_reg {int dummy; } ;
struct clk {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int CLK_MUX_INDEX_ONE ; 
 int CLK_SET_RATE_NO_REPARENT ; 
 int CLK_SET_RATE_PARENT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,unsigned int,int,struct clk_omap_reg*,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 char** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ,struct clk*) ; 
 unsigned int FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,char const**,unsigned int) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 scalar_t__ FUNC8 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*,int /*<<< orphan*/ ,struct clk_omap_reg*) ; 

__attribute__((used)) static void FUNC12(struct device_node *node)
{
	struct clk *clk;
	struct clk_omap_reg reg;
	unsigned int num_parents;
	const char **parent_names;
	u8 clk_mux_flags = 0;
	u32 mask = 0;
	u32 shift = 0;
	s32 latch = -EINVAL;
	u32 flags = CLK_SET_RATE_NO_REPARENT;

	num_parents = FUNC6(node);
	if (num_parents < 2) {
		FUNC10("mux-clock %pOFn must have parents\n", node);
		return;
	}
	parent_names = FUNC4((sizeof(char *) * num_parents), GFP_KERNEL);
	if (!parent_names)
		goto cleanup;

	FUNC7(node, parent_names, num_parents);

	if (FUNC11(node, 0, &reg))
		goto cleanup;

	FUNC9(node, "ti,bit-shift", &shift);

	FUNC9(node, "ti,latch-bit", &latch);

	if (FUNC8(node, "ti,index-starts-at-one"))
		clk_mux_flags |= CLK_MUX_INDEX_ONE;

	if (FUNC8(node, "ti,set-rate-parent"))
		flags |= CLK_SET_RATE_PARENT;

	/* Generate bit-mask based on parent info */
	mask = num_parents;
	if (!(clk_mux_flags & CLK_MUX_INDEX_ONE))
		mask--;

	mask = (1 << FUNC2(mask)) - 1;

	clk = FUNC1(NULL, node->name, parent_names, num_parents,
			    flags, &reg, shift, mask, latch, clk_mux_flags,
			    NULL);

	if (!FUNC0(clk))
		FUNC5(node, of_clk_src_simple_get, clk);

cleanup:
	FUNC3(parent_names);
}