#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct dock_station {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  UNDOCK_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC4 (struct dock_station*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dock_station*) ; 
 scalar_t__ FUNC6 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC7 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC8 (struct dock_station*) ; 

__attribute__((used)) static int FUNC9(struct dock_station *ds, u32 event)
{
	if (FUNC5(ds))
		return -EBUSY;

	/*
	 * here we need to generate the undock
	 * event prior to actually doing the undock
	 * so that the device struct still exists.
	 * Also, even send the dock event if the
	 * device is not present anymore
	 */
	FUNC4(ds, event, UNDOCK_EVENT);

	FUNC7(ds);
	FUNC8(ds);
	FUNC1(ds->handle, 0);
	FUNC0(ds->handle);
	if (FUNC6(ds)) {
		FUNC2(ds->handle, "Unable to undock!\n");
		return -EBUSY;
	}
	FUNC3(ds);
	return 0;
}