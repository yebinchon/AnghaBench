#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hws; } ;

/* Variables and functions */
 scalar_t__ CLK_TYPE_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_NAME_LEN ; 
 int MAX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* clock ; 
 scalar_t__ clock_max_idx ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* zynqmp_data ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct device_node*,scalar_t__,char const**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,scalar_t__,char const**) ; 

__attribute__((used)) static int FUNC9(struct device_node *np)
{
	int ret;
	u32 i, total_parents = 0, type = 0;
	const char *parent_names[MAX_PARENT];

	for (i = 0; i < clock_max_idx; i++) {
		char clk_name[MAX_NAME_LEN];

		/* get clock name, continue to next clock if name not found */
		if (FUNC5(i, clk_name))
			continue;

		/* Check if clock is valid and output clock.
		 * Do not register invalid or external clock.
		 */
		ret = FUNC6(i, &type);
		if (ret || type != CLK_TYPE_OUTPUT)
			continue;

		/* Get parents of clock*/
		if (FUNC7(np, i, parent_names,
					   &total_parents)) {
			FUNC3(1, "No parents found for %s\n",
				  clock[i].clk_name);
			continue;
		}

		zynqmp_data->hws[i] =
			FUNC8(i, clk_name,
						     total_parents,
						     parent_names);
	}

	for (i = 0; i < clock_max_idx; i++) {
		if (FUNC0(zynqmp_data->hws[i])) {
			FUNC4("Zynq Ultrascale+ MPSoC clk %s: register failed with %ld\n",
			       clock[i].clk_name, FUNC1(zynqmp_data->hws[i]));
			FUNC2(1);
		}
	}
	return 0;
}