#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_tmu_device {unsigned int num_channels; int rate; int /*<<< orphan*/  clk; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * channels; struct platform_device* pdev; int /*<<< orphan*/  model; int /*<<< orphan*/  lock; } ;
struct sh_timer_config {int /*<<< orphan*/  channels_mask; } ;
struct platform_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; struct platform_device_id* id_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct sh_tmu_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,unsigned int,int,int,struct sh_tmu_device*) ; 
 int FUNC18 (struct sh_tmu_device*) ; 
 int FUNC19 (struct sh_tmu_device*) ; 

__attribute__((used)) static int FUNC20(struct sh_tmu_device *tmu, struct platform_device *pdev)
{
	unsigned int i;
	int ret;

	tmu->pdev = pdev;

	FUNC16(&tmu->lock);

	if (FUNC0(CONFIG_OF) && pdev->dev.of_node) {
		ret = FUNC19(tmu);
		if (ret < 0)
			return ret;
	} else if (pdev->dev.platform_data) {
		const struct platform_device_id *id = pdev->id_entry;
		struct sh_timer_config *cfg = pdev->dev.platform_data;

		tmu->model = id->driver_data;
		tmu->num_channels = FUNC11(cfg->channels_mask);
	} else {
		FUNC10(&tmu->pdev->dev, "missing platform data\n");
		return -ENXIO;
	}

	/* Get hold of clock. */
	tmu->clk = FUNC5(&tmu->pdev->dev, "fck");
	if (FUNC1(tmu->clk)) {
		FUNC10(&tmu->pdev->dev, "cannot get clock\n");
		return FUNC2(tmu->clk);
	}

	ret = FUNC7(tmu->clk);
	if (ret < 0)
		goto err_clk_put;

	/* Determine clock rate. */
	ret = FUNC4(tmu->clk);
	if (ret < 0)
		goto err_clk_unprepare;

	tmu->rate = FUNC6(tmu->clk) / 4;
	FUNC3(tmu->clk);

	/* Map the memory resource. */
	ret = FUNC18(tmu);
	if (ret < 0) {
		FUNC10(&tmu->pdev->dev, "failed to remap I/O memory\n");
		goto err_clk_unprepare;
	}

	/* Allocate and setup the channels. */
	tmu->channels = FUNC13(tmu->num_channels, sizeof(*tmu->channels),
				GFP_KERNEL);
	if (tmu->channels == NULL) {
		ret = -ENOMEM;
		goto err_unmap;
	}

	/*
	 * Use the first channel as a clock event device and the second channel
	 * as a clock source.
	 */
	for (i = 0; i < tmu->num_channels; ++i) {
		ret = FUNC17(&tmu->channels[i], i,
					   i == 0, i == 1, tmu);
		if (ret < 0)
			goto err_unmap;
	}

	FUNC15(pdev, tmu);

	return 0;

err_unmap:
	FUNC14(tmu->channels);
	FUNC12(tmu->mapbase);
err_clk_unprepare:
	FUNC9(tmu->clk);
err_clk_put:
	FUNC8(tmu->clk);
	return ret;
}