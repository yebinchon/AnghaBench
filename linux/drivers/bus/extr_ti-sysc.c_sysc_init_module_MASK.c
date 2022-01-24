#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int quirks; } ;
struct sysc {int /*<<< orphan*/  dev; scalar_t__ legacy_mode; int /*<<< orphan*/  revision; TYPE_1__ cfg; } ;

/* Variables and functions */
 int SYSC_QUIRK_NO_IDLE ; 
 int SYSC_QUIRK_NO_IDLE_ON_INIT ; 
 int SYSC_QUIRK_NO_RESET_ON_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysc*) ; 
 int FUNC3 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sysc*) ; 
 int FUNC7 (struct sysc*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC10 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC11 (struct sysc*) ; 
 int FUNC12 (struct sysc*) ; 
 int /*<<< orphan*/  FUNC13 (struct sysc*) ; 
 int FUNC14 (struct sysc*) ; 
 int FUNC15 (struct sysc*,int) ; 

__attribute__((used)) static int FUNC16(struct sysc *ddata)
{
	int error = 0;
	bool manage_clocks = true;

	error = FUNC15(ddata, false);
	if (error)
		return error;

	if (ddata->cfg.quirks &
	    (SYSC_QUIRK_NO_IDLE | SYSC_QUIRK_NO_IDLE_ON_INIT))
		manage_clocks = false;

	error = FUNC3(ddata);
	if (error)
		return error;

	FUNC2(ddata);

	/*
	 * Always enable clocks. The bootloader may or may not have enabled
	 * the related clocks.
	 */
	error = FUNC9(ddata);
	if (error)
		return error;

	error = FUNC7(ddata);
	if (error)
		goto err_opt_clocks;

	if (!(ddata->cfg.quirks & SYSC_QUIRK_NO_RESET_ON_INIT)) {
		error = FUNC15(ddata, true);
		if (error)
			goto err_main_clocks;
	}

	ddata->revision = FUNC13(ddata);
	FUNC11(ddata);
	FUNC10(ddata);

	if (ddata->legacy_mode) {
		error = FUNC12(ddata);
		if (error)
			goto err_main_clocks;
	}

	if (!ddata->legacy_mode) {
		error = FUNC8(ddata->dev);
		if (error)
			goto err_main_clocks;
	}

	error = FUNC14(ddata);
	if (error)
		FUNC0(ddata->dev, "Reset failed with %d\n", error);

	if (!ddata->legacy_mode && manage_clocks)
		FUNC5(ddata->dev);

err_main_clocks:
	if (manage_clocks)
		FUNC4(ddata);
err_opt_clocks:
	/* No re-enable of clockdomain autoidle to prevent module autoidle */
	if (manage_clocks) {
		FUNC6(ddata);
		FUNC1(ddata);
	}

	return error;
}