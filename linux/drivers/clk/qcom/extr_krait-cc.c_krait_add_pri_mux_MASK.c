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
struct TYPE_2__ {struct clk_init_data* init; } ;
struct krait_mux_clk {int mask; unsigned int offset; int lpl; int safe_sel; TYPE_1__ hw; int /*<<< orphan*/  parent_map; scalar_t__ shift; } ;
struct device {int dummy; } ;
struct clk_init_data {char const** parent_names; char const* name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  num_parents; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clk* FUNC2 (struct device*,TYPE_1__*) ; 
 struct krait_mux_clk* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  krait_mux_clk_ops ; 
 int FUNC6 (struct device*,struct clk*,struct krait_mux_clk*) ; 
 int /*<<< orphan*/  pri_mux_map ; 

__attribute__((used)) static struct clk *
FUNC7(struct device *dev, int id, const char *s,
		  unsigned int offset)
{
	int ret;
	struct krait_mux_clk *mux;
	const char *p_names[3];
	struct clk_init_data init = {
		.parent_names = p_names,
		.num_parents = FUNC0(p_names),
		.ops = &krait_mux_clk_ops,
		.flags = CLK_SET_RATE_PARENT,
	};
	struct clk *clk;

	mux = FUNC3(dev, sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return FUNC1(-ENOMEM);

	mux->mask = 0x3;
	mux->shift = 0;
	mux->offset = offset;
	mux->lpl = id >= 0;
	mux->parent_map = pri_mux_map;
	mux->hw.init = &init;
	mux->safe_sel = 2;

	init.name = FUNC4(GFP_KERNEL, "krait%s_pri_mux", s);
	if (!init.name)
		return FUNC1(-ENOMEM);

	p_names[0] = FUNC4(GFP_KERNEL, "hfpll%s", s);
	if (!p_names[0]) {
		clk = FUNC1(-ENOMEM);
		goto err_p0;
	}

	p_names[1] = FUNC4(GFP_KERNEL, "hfpll%s_div", s);
	if (!p_names[1]) {
		clk = FUNC1(-ENOMEM);
		goto err_p1;
	}

	p_names[2] = FUNC4(GFP_KERNEL, "krait%s_sec_mux", s);
	if (!p_names[2]) {
		clk = FUNC1(-ENOMEM);
		goto err_p2;
	}

	clk = FUNC2(dev, &mux->hw);

	ret = FUNC6(dev, clk, mux);
	if (ret)
		goto err_p3;
err_p3:
	FUNC5(p_names[2]);
err_p2:
	FUNC5(p_names[1]);
err_p1:
	FUNC5(p_names[0]);
err_p0:
	FUNC5(init.name);
	return clk;
}