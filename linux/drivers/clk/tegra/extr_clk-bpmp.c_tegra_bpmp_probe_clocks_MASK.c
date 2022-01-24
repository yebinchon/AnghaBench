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
struct tegra_bpmp_clk_info {scalar_t__ num_parents; char* name; unsigned int id; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ TEGRA_BPMP_DUMP_CLOCK_INFO ; 
 scalar_t__ U8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,scalar_t__,scalar_t__) ; 
 struct tegra_bpmp_clk_info* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tegra_bpmp*,unsigned int,struct tegra_bpmp_clk_info*) ; 
 int FUNC4 (struct tegra_bpmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bpmp*,int /*<<< orphan*/ ,struct tegra_bpmp_clk_info*) ; 

__attribute__((used)) static int FUNC6(struct tegra_bpmp *bpmp,
				   struct tegra_bpmp_clk_info **clocksp)
{
	struct tegra_bpmp_clk_info *clocks;
	unsigned int max_id, id, count = 0;
	unsigned int holes = 0;
	int err;

	err = FUNC4(bpmp);
	if (err < 0)
		return err;

	max_id = err;

	FUNC0(bpmp->dev, "maximum clock ID: %u\n", max_id);

	clocks = FUNC2(max_id + 1, sizeof(*clocks), GFP_KERNEL);
	if (!clocks)
		return -ENOMEM;

	for (id = 0; id <= max_id; id++) {
		struct tegra_bpmp_clk_info *info = &clocks[count];

		err = FUNC3(bpmp, id, info);
		if (err < 0)
			continue;

		if (info->num_parents >= U8_MAX) {
			FUNC1(bpmp->dev,
				"clock %u has too many parents (%u, max: %u)\n",
				id, info->num_parents, U8_MAX);
			continue;
		}

		/* clock not exposed by BPMP */
		if (info->name[0] == '\0') {
			holes++;
			continue;
		}

		info->id = id;
		count++;

		if (TEGRA_BPMP_DUMP_CLOCK_INFO)
			FUNC5(bpmp, KERN_DEBUG, info);
	}

	FUNC0(bpmp->dev, "holes: %u\n", holes);
	*clocksp = clocks;

	return count;
}