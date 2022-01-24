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
struct TYPE_13__ {int /*<<< orphan*/  failed_suspend_noirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUSPEND_SUSPEND_NOIRQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int async_error ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 TYPE_6__ dpm_late_early_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  dpm_noirq_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,TYPE_2__,char*,int) ; 
 TYPE_2__ pm_transition ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 TYPE_3__ suspend_stats ; 
 struct device* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(pm_message_t state)
{
	ktime_t starttime = FUNC8();
	int error = 0;

	FUNC16(FUNC0("dpm_suspend_noirq"), state.event, true);
	FUNC11(&dpm_list_mtx);
	pm_transition = state;
	async_error = 0;

	while (!FUNC9(&dpm_late_early_list)) {
		struct device *dev = FUNC15(dpm_late_early_list.prev);

		FUNC7(dev);
		FUNC12(&dpm_list_mtx);

		error = FUNC3(dev);

		FUNC11(&dpm_list_mtx);
		if (error) {
			FUNC13(dev, state, " noirq", error);
			FUNC4(FUNC2(dev));
			FUNC14(dev);
			break;
		}
		if (!FUNC9(&dev->power.entry))
			FUNC10(&dev->power.entry, &dpm_noirq_list);
		FUNC14(dev);

		if (async_error)
			break;
	}
	FUNC12(&dpm_list_mtx);
	FUNC1();
	if (!error)
		error = async_error;

	if (error) {
		suspend_stats.failed_suspend_noirq++;
		FUNC5(SUSPEND_SUSPEND_NOIRQ);
	}
	FUNC6(starttime, state, error, "noirq");
	FUNC16(FUNC0("dpm_suspend_noirq"), state.event, false);
	return error;
}