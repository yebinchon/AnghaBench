#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  next; } ;
struct TYPE_8__ {int is_prepared; TYPE_3__ entry; } ;
struct device {TYPE_1__ power; } ;
struct TYPE_9__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ pm_message_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct device*,TYPE_2__) ; 
 TYPE_3__ dpm_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 int /*<<< orphan*/  dpm_prepared_list ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 struct device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(pm_message_t state)
{
	int error = 0;

	FUNC15(FUNC0("dpm_prepare"), state.event, true);
	FUNC7();

	/*
	 * Give a chance for the known devices to complete their probes, before
	 * disable probing of devices. This sync point is important at least
	 * at boot time + hibernation restore.
	 */
	FUNC16();
	/*
	 * It is unsafe if probing of devices will happen during suspend or
	 * hibernation and system behavior will be unpredictable in this case.
	 * So, let's prohibit device's probing here and defer their probes
	 * instead. The normal behavior will be restored in dpm_complete().
	 */
	FUNC2();

	FUNC8(&dpm_list_mtx);
	while (!FUNC5(&dpm_list)) {
		struct device *dev = FUNC12(dpm_list.next);

		FUNC4(dev);
		FUNC9(&dpm_list_mtx);

		FUNC14(dev, "", state.event);
		error = FUNC3(dev, state);
		FUNC13(dev, error);

		FUNC8(&dpm_list_mtx);
		if (error) {
			if (error == -EAGAIN) {
				FUNC11(dev);
				error = 0;
				continue;
			}
			FUNC10("Device %s not prepared for power transition: code %d\n",
				FUNC1(dev), error);
			FUNC11(dev);
			break;
		}
		dev->power.is_prepared = true;
		if (!FUNC5(&dev->power.entry))
			FUNC6(&dev->power.entry, &dpm_prepared_list);
		FUNC11(dev);
	}
	FUNC9(&dpm_list_mtx);
	FUNC15(FUNC0("dpm_prepare"), state.event, false);
	return error;
}