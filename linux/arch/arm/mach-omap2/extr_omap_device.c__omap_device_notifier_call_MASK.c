#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  od; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__ archdata; } ;
struct omap_device {int _driver_status; int /*<<< orphan*/  _state; } ;
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  BUS_NOTIFY_ADD_DEVICE 131 
#define  BUS_NOTIFY_BIND_DRIVER 130 
#define  BUS_NOTIFY_REMOVED_DEVICE 129 
#define  BUS_NOTIFY_UNBOUND_DRIVER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  OMAP_DEVICE_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 struct omap_device* FUNC8 (struct platform_device*) ; 
 struct platform_device* FUNC9 (void*) ; 

__attribute__((used)) static int FUNC10(struct notifier_block *nb,
				      unsigned long event, void *dev)
{
	struct platform_device *pdev = FUNC9(dev);
	struct omap_device *od;
	int err;

	switch (event) {
	case BUS_NOTIFY_REMOVED_DEVICE:
		if (pdev->archdata.od)
			FUNC4(pdev->archdata.od);
		break;
	case BUS_NOTIFY_UNBOUND_DRIVER:
		od = FUNC8(pdev);
		if (od && (od->_state == OMAP_DEVICE_STATE_ENABLED)) {
			FUNC1(dev, "enabled after unload, idling\n");
			err = FUNC5(pdev);
			if (err)
				FUNC0(dev, "failed to idle\n");
		}
		break;
	case BUS_NOTIFY_BIND_DRIVER:
		od = FUNC8(pdev);
		if (od && (od->_state == OMAP_DEVICE_STATE_ENABLED) &&
		    FUNC7(dev)) {
			od->_driver_status = BUS_NOTIFY_BIND_DRIVER;
			FUNC6(dev);
		}
		break;
	case BUS_NOTIFY_ADD_DEVICE:
		if (pdev->dev.of_node)
			FUNC3(pdev);
		FUNC2(dev);
		/* fall through */
	default:
		od = FUNC8(pdev);
		if (od)
			od->_driver_status = event;
	}

	return NOTIFY_DONE;
}