#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_timer_config {unsigned int channels_mask; } ;
struct sh_cmt_info {unsigned int channels_mask; int width; } ;
struct sh_cmt_device {unsigned int hw_channels; int rate; unsigned int num_channels; int /*<<< orphan*/  clk; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * channels; struct sh_cmt_info const* info; struct platform_device* pdev; int /*<<< orphan*/  lock; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_4__ {struct sh_timer_config* platform_data; scalar_t__ of_node; } ;
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
 int FUNC11 (unsigned int) ; 
 unsigned int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct sh_cmt_info const* FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct sh_cmt_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct sh_cmt_device*) ; 
 int FUNC20 (int /*<<< orphan*/ *,unsigned int,unsigned int,int,int,struct sh_cmt_device*) ; 

__attribute__((used)) static int FUNC21(struct sh_cmt_device *cmt, struct platform_device *pdev)
{
	unsigned int mask;
	unsigned int i;
	int ret;

	cmt->pdev = pdev;
	FUNC18(&cmt->lock);

	if (FUNC0(CONFIG_OF) && pdev->dev.of_node) {
		cmt->info = FUNC16(&pdev->dev);
		cmt->hw_channels = cmt->info->channels_mask;
	} else if (pdev->dev.platform_data) {
		struct sh_timer_config *cfg = pdev->dev.platform_data;
		const struct platform_device_id *id = pdev->id_entry;

		cmt->info = (const struct sh_cmt_info *)id->driver_data;
		cmt->hw_channels = cfg->channels_mask;
	} else {
		FUNC10(&cmt->pdev->dev, "missing platform data\n");
		return -ENXIO;
	}

	/* Get hold of clock. */
	cmt->clk = FUNC5(&cmt->pdev->dev, "fck");
	if (FUNC1(cmt->clk)) {
		FUNC10(&cmt->pdev->dev, "cannot get clock\n");
		return FUNC2(cmt->clk);
	}

	ret = FUNC7(cmt->clk);
	if (ret < 0)
		goto err_clk_put;

	/* Determine clock rate. */
	ret = FUNC4(cmt->clk);
	if (ret < 0)
		goto err_clk_unprepare;

	if (cmt->info->width == 16)
		cmt->rate = FUNC6(cmt->clk) / 512;
	else
		cmt->rate = FUNC6(cmt->clk) / 8;

	FUNC3(cmt->clk);

	/* Map the memory resource(s). */
	ret = FUNC19(cmt);
	if (ret < 0)
		goto err_clk_unprepare;

	/* Allocate and setup the channels. */
	cmt->num_channels = FUNC12(cmt->hw_channels);
	cmt->channels = FUNC14(cmt->num_channels, sizeof(*cmt->channels),
				GFP_KERNEL);
	if (cmt->channels == NULL) {
		ret = -ENOMEM;
		goto err_unmap;
	}

	/*
	 * Use the first channel as a clock event device and the second channel
	 * as a clock source. If only one channel is available use it for both.
	 */
	for (i = 0, mask = cmt->hw_channels; i < cmt->num_channels; ++i) {
		unsigned int hwidx = FUNC11(mask) - 1;
		bool clocksource = i == 1 || cmt->num_channels == 1;
		bool clockevent = i == 0;

		ret = FUNC20(&cmt->channels[i], i, hwidx,
					   clockevent, clocksource, cmt);
		if (ret < 0)
			goto err_unmap;

		mask &= ~(1 << hwidx);
	}

	FUNC17(pdev, cmt);

	return 0;

err_unmap:
	FUNC15(cmt->channels);
	FUNC13(cmt->mapbase);
err_clk_unprepare:
	FUNC9(cmt->clk);
err_clk_put:
	FUNC8(cmt->clk);
	return ret;
}