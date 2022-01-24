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
struct regmap {int dummy; } ;
struct mtk_composite {size_t id; struct device_node* name; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {struct regmap** clks; } ;
typedef  struct regmap clk ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 struct regmap* FUNC2 (struct mtk_composite const*,struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct device_node*,int) ; 
 struct regmap* FUNC4 (struct device_node*) ; 

int FUNC5(struct device_node *node,
			      const struct mtk_composite *clks, int num,
			      struct clk_onecell_data *clk_data)
{
	int i;
	struct clk *clk;
	struct regmap *regmap;

	regmap = FUNC4(node);
	if (FUNC0(regmap)) {
		FUNC3("Cannot find regmap for %pOF: %ld\n", node,
		       FUNC1(regmap));
		return FUNC1(regmap);
	}

	for (i = 0; i < num; i++) {
		const struct mtk_composite *mux = &clks[i];

		clk = FUNC2(mux, regmap);
		if (FUNC0(clk)) {
			FUNC3("Failed to register clk %s: %ld\n",
			       mux->name, FUNC1(clk));
			continue;
		}

		clk_data->clks[mux->id] = clk;
	}

	return 0;
}