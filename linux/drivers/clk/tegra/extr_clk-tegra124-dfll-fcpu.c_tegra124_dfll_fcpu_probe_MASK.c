#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rail_alignment {int dummy; } ;
struct tegra_dfll_soc_data {int /*<<< orphan*/  max_freq; int /*<<< orphan*/  cvb; int /*<<< orphan*/  dev; struct rail_alignment alignment; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dfll_fcpu_data {int cpu_max_freq_table_size; int /*<<< orphan*/  cpu_cvb_tables_size; int /*<<< orphan*/  cpu_cvb_tables; int /*<<< orphan*/ * cpu_max_freq_table; } ;
struct TYPE_7__ {int cpu_process_id; int cpu_speedo_id; int cpu_speedo_value; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct tegra_dfll_soc_data* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct rail_alignment*) ; 
 int FUNC5 (TYPE_2__*,struct rail_alignment*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct dfll_fcpu_data* FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rail_alignment*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct platform_device*,struct tegra_dfll_soc_data*) ; 
 TYPE_1__ tegra_sku_info ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	int process_id, speedo_id, speedo_value, err;
	struct tegra_dfll_soc_data *soc;
	const struct dfll_fcpu_data *fcpu_data;
	struct rail_alignment align;

	fcpu_data = FUNC7(&pdev->dev);
	if (!fcpu_data)
		return -ENODEV;

	process_id = tegra_sku_info.cpu_process_id;
	speedo_id = tegra_sku_info.cpu_speedo_id;
	speedo_value = tegra_sku_info.cpu_speedo_value;

	if (speedo_id >= fcpu_data->cpu_max_freq_table_size) {
		FUNC2(&pdev->dev, "unknown max CPU freq for speedo_id=%d\n",
			speedo_id);
		return -ENODEV;
	}

	soc = FUNC3(&pdev->dev, sizeof(*soc), GFP_KERNEL);
	if (!soc)
		return -ENOMEM;

	soc->dev = FUNC6(0);
	if (!soc->dev) {
		FUNC2(&pdev->dev, "no CPU0 device\n");
		return -ENODEV;
	}

	if (FUNC8(pdev->dev.of_node, "nvidia,pwm-to-pmic")) {
		FUNC4(&pdev->dev, &align);
	} else {
		err = FUNC5(&pdev->dev, &align);
		if (err)
			return err;
	}

	soc->max_freq = fcpu_data->cpu_max_freq_table[speedo_id];

	soc->cvb = FUNC9(soc->dev, fcpu_data->cpu_cvb_tables,
					   fcpu_data->cpu_cvb_tables_size,
					   &align, process_id, speedo_id,
					   speedo_value, soc->max_freq);
	soc->alignment = align;

	if (FUNC0(soc->cvb)) {
		FUNC2(&pdev->dev, "couldn't add OPP table: %ld\n",
			FUNC1(soc->cvb));
		return FUNC1(soc->cvb);
	}

	err = FUNC11(pdev, soc);
	if (err < 0) {
		FUNC10(soc->dev, soc->cvb, soc->max_freq);
		return err;
	}

	return 0;
}