#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ti_sysc_platform_data {int /*<<< orphan*/ * auxdata; } ;
struct TYPE_11__ {int quirks; } ;
struct sysc {int /*<<< orphan*/  idle_work; TYPE_1__ cfg; TYPE_2__* dev; scalar_t__ rsts; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * type; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SYSC_QUIRK_NO_IDLE ; 
 int SYSC_QUIRK_NO_IDLE_ON_INIT ; 
 int SYSC_QUIRK_NO_RESET_ON_INIT ; 
 struct ti_sysc_platform_data* FUNC1 (TYPE_2__*) ; 
 struct sysc* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct sysc*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sysc_device_type ; 
 int FUNC13 (struct sysc*) ; 
 int FUNC14 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC15 (struct sysc*) ; 
 int FUNC16 (struct sysc*) ; 
 int FUNC17 (struct sysc*) ; 
 int FUNC18 (struct sysc*) ; 
 int FUNC19 (struct sysc*) ; 
 int FUNC20 (struct sysc*) ; 
 int FUNC21 (struct sysc*) ; 
 int FUNC22 (struct sysc*) ; 
 int FUNC23 (struct sysc*) ; 
 int /*<<< orphan*/  sysc_match_table ; 
 int /*<<< orphan*/  FUNC24 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC25 (struct sysc*) ; 
 int /*<<< orphan*/  ti_sysc_idle ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct ti_sysc_platform_data *pdata = FUNC1(&pdev->dev);
	struct sysc *ddata;
	int error;

	ddata = FUNC2(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	ddata->dev = &pdev->dev;
	FUNC4(pdev, ddata);

	error = FUNC17(ddata);
	if (error)
		return error;

	error = FUNC14(ddata);
	if (error)
		return error;

	error = FUNC23(ddata);
	if (error)
		return error;

	error = FUNC21(ddata);
	if (error)
		return error;

	error = FUNC16(ddata);
	if (error)
		return error;

	error = FUNC22(ddata);
	if (error)
		return error;

	error = FUNC19(ddata);
	if (error)
		return error;

	FUNC15(ddata);

	error = FUNC13(ddata);
	if (error)
		return error;

	error = FUNC20(ddata);
	if (error)
		goto unprepare;

	error = FUNC18(ddata);
	if (error)
		goto unprepare;

	FUNC6(ddata->dev);
	error = FUNC7(ddata->dev);
	if (error < 0) {
		FUNC9(ddata->dev);
		FUNC5(ddata->dev);
		goto unprepare;
	}

	/* Balance reset counts */
	if (ddata->rsts)
		FUNC11(ddata->rsts);

	FUNC24(ddata);

	ddata->dev->type = &sysc_device_type;
	error = FUNC3(ddata->dev->of_node, sysc_match_table,
				     pdata ? pdata->auxdata : NULL,
				     ddata->dev);
	if (error)
		goto err;

	FUNC0(&ddata->idle_work, ti_sysc_idle);

	/* At least earlycon won't survive without deferred idle */
	if (ddata->cfg.quirks & (SYSC_QUIRK_NO_IDLE |
				 SYSC_QUIRK_NO_IDLE_ON_INIT |
				 SYSC_QUIRK_NO_RESET_ON_INIT)) {
		FUNC12(&ddata->idle_work, 3000);
	} else {
		FUNC8(&pdev->dev);
	}

	return 0;

err:
	FUNC10(&pdev->dev);
	FUNC5(&pdev->dev);
unprepare:
	FUNC25(ddata);

	return error;
}