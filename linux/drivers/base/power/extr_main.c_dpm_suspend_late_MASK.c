#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  prev; } ;
struct TYPE_12__ {TYPE_7__ entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_13__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ pm_message_t ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_14__ {int /*<<< orphan*/  failed_suspend_late; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND_SUSPEND_LATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int async_error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  dpm_late_early_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__,int,char*) ; 
 TYPE_7__ dpm_suspended_list ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,TYPE_2__,char*,int) ; 
 TYPE_2__ pm_transition ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__) ; 
 TYPE_3__ suspend_stats ; 
 struct device* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC19(pm_message_t state)
{
	ktime_t starttime = FUNC9();
	int error = 0;

	FUNC18(FUNC0("dpm_suspend_late"), state.event, true);
	FUNC12(&dpm_list_mtx);
	pm_transition = state;
	async_error = 0;

	while (!FUNC10(&dpm_suspended_list)) {
		struct device *dev = FUNC17(dpm_suspended_list.prev);

		FUNC8(dev);
		FUNC13(&dpm_list_mtx);

		error = FUNC3(dev);

		FUNC12(&dpm_list_mtx);
		if (!FUNC10(&dev->power.entry))
			FUNC11(&dev->power.entry, &dpm_late_early_list);

		if (error) {
			FUNC14(dev, state, " late", error);
			FUNC5(FUNC2(dev));
			FUNC15(dev);
			break;
		}
		FUNC15(dev);

		if (async_error)
			break;
	}
	FUNC13(&dpm_list_mtx);
	FUNC1();
	if (!error)
		error = async_error;
	if (error) {
		suspend_stats.failed_suspend_late++;
		FUNC6(SUSPEND_SUSPEND_LATE);
		FUNC4(FUNC16(state));
	}
	FUNC7(starttime, state, error, "late");
	FUNC18(FUNC0("dpm_suspend_late"), state.event, false);
	return error;
}