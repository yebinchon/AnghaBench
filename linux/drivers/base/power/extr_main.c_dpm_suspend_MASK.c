#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  prev; } ;
struct TYPE_11__ {TYPE_6__ entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_12__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ pm_message_t ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_13__ {int /*<<< orphan*/  failed_suspend; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int async_error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 TYPE_6__ dpm_prepared_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpm_suspended_list ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device*,TYPE_2__,char*,int) ; 
 TYPE_2__ pm_transition ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 TYPE_3__ suspend_stats ; 
 struct device* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC20(pm_message_t state)
{
	ktime_t starttime = FUNC10();
	int error = 0;

	FUNC19(FUNC0("dpm_suspend"), state.event, true);
	FUNC13();

	FUNC4();
	FUNC2();

	FUNC14(&dpm_list_mtx);
	pm_transition = state;
	async_error = 0;
	while (!FUNC11(&dpm_prepared_list)) {
		struct device *dev = FUNC18(dpm_prepared_list.prev);

		FUNC9(dev);
		FUNC15(&dpm_list_mtx);

		error = FUNC5(dev);

		FUNC14(&dpm_list_mtx);
		if (error) {
			FUNC16(dev, state, "", error);
			FUNC6(FUNC3(dev));
			FUNC17(dev);
			break;
		}
		if (!FUNC11(&dev->power.entry))
			FUNC12(&dev->power.entry, &dpm_suspended_list);
		FUNC17(dev);
		if (async_error)
			break;
	}
	FUNC15(&dpm_list_mtx);
	FUNC1();
	if (!error)
		error = async_error;
	if (error) {
		suspend_stats.failed_suspend++;
		FUNC7(SUSPEND_SUSPEND);
	}
	FUNC8(starttime, state, error, NULL);
	FUNC19(FUNC0("dpm_suspend"), state.event, false);
	return error;
}