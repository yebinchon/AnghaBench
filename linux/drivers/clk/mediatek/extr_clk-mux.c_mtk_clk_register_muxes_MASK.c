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
struct mtk_mux {size_t id; struct device_node* name; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {struct regmap** clks; } ;
typedef  struct regmap clk ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 struct regmap* FUNC3 (struct mtk_mux const*,struct regmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*,int) ; 
 struct regmap* FUNC5 (struct device_node*) ; 

int FUNC6(const struct mtk_mux *muxes,
			   int num, struct device_node *node,
			   spinlock_t *lock,
			   struct clk_onecell_data *clk_data)
{
	struct regmap *regmap;
	struct clk *clk;
	int i;

	regmap = FUNC5(node);
	if (FUNC0(regmap)) {
		FUNC4("Cannot find regmap for %pOF: %ld\n", node,
		       FUNC2(regmap));
		return FUNC2(regmap);
	}

	for (i = 0; i < num; i++) {
		const struct mtk_mux *mux = &muxes[i];

		if (FUNC1(clk_data->clks[mux->id])) {
			clk = FUNC3(mux, regmap, lock);

			if (FUNC0(clk)) {
				FUNC4("Failed to register clk %s: %ld\n",
				       mux->name, FUNC2(clk));
				continue;
			}

			clk_data->clks[mux->id] = clk;
		}
	}

	return 0;
}