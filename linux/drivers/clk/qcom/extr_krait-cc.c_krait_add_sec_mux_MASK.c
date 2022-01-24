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
struct krait_mux_clk {unsigned int offset; int lpl; int mask; int shift; TYPE_1__ hw; scalar_t__ safe_sel; int /*<<< orphan*/  parent_map; } ;
struct device {int dummy; } ;
struct clk_init_data {char const** parent_names; char const* name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  num_parents; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 struct clk* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (struct device*,TYPE_1__*) ; 
 struct krait_mux_clk* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  krait_mux_clk_ops ; 
 int FUNC7 (struct device*,struct clk*,struct krait_mux_clk*) ; 
 int /*<<< orphan*/  sec_mux_map ; 

__attribute__((used)) static int
FUNC8(struct device *dev, int id, const char *s,
		  unsigned int offset, bool unique_aux)
{
	int ret;
	struct krait_mux_clk *mux;
	static const char *sec_mux_list[] = {
		"acpu_aux",
		"qsb",
	};
	struct clk_init_data init = {
		.parent_names = sec_mux_list,
		.num_parents = FUNC0(sec_mux_list),
		.ops = &krait_mux_clk_ops,
		.flags = CLK_SET_RATE_PARENT,
	};
	struct clk *clk;

	mux = FUNC4(dev, sizeof(*mux), GFP_KERNEL);
	if (!mux)
		return -ENOMEM;

	mux->offset = offset;
	mux->lpl = id >= 0;
	mux->mask = 0x3;
	mux->shift = 2;
	mux->parent_map = sec_mux_map;
	mux->hw.init = &init;
	mux->safe_sel = 0;

	init.name = FUNC5(GFP_KERNEL, "krait%s_sec_mux", s);
	if (!init.name)
		return -ENOMEM;

	if (unique_aux) {
		sec_mux_list[0] = FUNC5(GFP_KERNEL, "acpu%s_aux", s);
		if (!sec_mux_list[0]) {
			clk = FUNC1(-ENOMEM);
			goto err_aux;
		}
	}

	clk = FUNC3(dev, &mux->hw);

	ret = FUNC7(dev, clk, mux);
	if (ret)
		goto unique_aux;

unique_aux:
	if (unique_aux)
		FUNC6(sec_mux_list[0]);
err_aux:
	FUNC6(init.name);
	return FUNC2(clk);
}