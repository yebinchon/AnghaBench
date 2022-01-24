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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGPIO_MAGICIAN_CABLE_INSERTED ; 
 int /*<<< orphan*/  EGPIO_MAGICIAN_CABLE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int ret = -1;

	ret = FUNC1(EGPIO_MAGICIAN_CABLE_TYPE, "Cable is AC charger");
	if (ret) {
		FUNC2("Cannot request AC/USB charger GPIO (%i)\n", ret);
		goto err_ac;
	}

	ret = FUNC1(EGPIO_MAGICIAN_CABLE_INSERTED, "Cable inserted");
	if (ret) {
		FUNC2("Cannot request cable detection GPIO (%i)\n", ret);
		goto err_usb;
	}

	return 0;

err_usb:
	FUNC0(EGPIO_MAGICIAN_CABLE_TYPE);
err_ac:
	return ret;
}