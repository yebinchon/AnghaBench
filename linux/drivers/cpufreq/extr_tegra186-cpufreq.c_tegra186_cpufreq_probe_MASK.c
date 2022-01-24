#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_bpmp {int dummy; } ;
struct tegra186_cpufreq_data {unsigned int num_clusters; struct tegra186_cpufreq_cluster* clusters; struct tegra_bpmp* regs; } ;
struct tegra186_cpufreq_cluster {struct tegra_bpmp* table; TYPE_2__* info; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bpmp_cluster_id; } ;
struct TYPE_5__ {struct tegra186_cpufreq_data* driver_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct tegra_bpmp*) ; 
 int FUNC2 (struct tegra_bpmp*) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 struct tegra_bpmp* FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra186_cpufreq_cluster* FUNC5 (int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct tegra186_cpufreq_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct tegra_bpmp* FUNC7 (struct platform_device*,struct tegra_bpmp*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* tegra186_clusters ; 
 TYPE_1__ tegra186_cpufreq_driver ; 
 struct tegra_bpmp* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_bpmp*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct tegra186_cpufreq_data *data;
	struct tegra_bpmp *bpmp;
	struct resource *res;
	unsigned int i = 0, err;

	data = FUNC6(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->clusters = FUNC5(&pdev->dev, FUNC0(tegra186_clusters),
				      sizeof(*data->clusters), GFP_KERNEL);
	if (!data->clusters)
		return -ENOMEM;

	data->num_clusters = FUNC0(tegra186_clusters);

	bpmp = FUNC9(&pdev->dev);
	if (FUNC1(bpmp))
		return FUNC2(bpmp);

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	data->regs = FUNC4(&pdev->dev, res);
	if (FUNC1(data->regs)) {
		err = FUNC2(data->regs);
		goto put_bpmp;
	}

	for (i = 0; i < data->num_clusters; i++) {
		struct tegra186_cpufreq_cluster *cluster = &data->clusters[i];

		cluster->info = &tegra186_clusters[i];
		cluster->table = FUNC7(
			pdev, bpmp, cluster->info->bpmp_cluster_id);
		if (FUNC1(cluster->table)) {
			err = FUNC2(cluster->table);
			goto put_bpmp;
		}
	}

	FUNC10(bpmp);

	tegra186_cpufreq_driver.driver_data = data;

	err = FUNC3(&tegra186_cpufreq_driver);
	if (err)
		return err;

	return 0;

put_bpmp:
	FUNC10(bpmp);

	return err;
}