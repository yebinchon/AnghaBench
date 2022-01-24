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
typedef  void* u32 ;
struct tegra_clk_emc {int dummy; } ;
struct emc_timing {int parent_index; int /*<<< orphan*/  parent; void* parent_rate; void* rate; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * emc_parent_clk_names ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 
 int FUNC6 (struct device_node*,char*,void**) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct device_node*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tegra_clk_emc *tegra,
				   struct emc_timing *timing,
				   struct device_node *node)
{
	int err, i;
	u32 tmp;

	err = FUNC6(node, "clock-frequency", &tmp);
	if (err) {
		FUNC7("timing %pOF: failed to read rate\n", node);
		return err;
	}

	timing->rate = tmp;

	err = FUNC6(node, "nvidia,parent-clock-frequency", &tmp);
	if (err) {
		FUNC7("timing %pOF: failed to read parent rate\n", node);
		return err;
	}

	timing->parent_rate = tmp;

	timing->parent = FUNC5(node, "emc-parent");
	if (FUNC1(timing->parent)) {
		FUNC7("timing %pOF: failed to get parent clock\n", node);
		return FUNC2(timing->parent);
	}

	timing->parent_index = 0xff;
	for (i = 0; i < FUNC0(emc_parent_clk_names); i++) {
		if (!FUNC8(emc_parent_clk_names[i],
			    FUNC3(timing->parent))) {
			timing->parent_index = i;
			break;
		}
	}
	if (timing->parent_index == 0xff) {
		FUNC7("timing %pOF: %s is not a valid parent\n",
		       node, FUNC3(timing->parent));
		FUNC4(timing->parent);
		return -EINVAL;
	}

	return 0;
}