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
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct serdev_device* serdev; } ;
struct bcm_device {TYPE_1__ serdev_hu; int /*<<< orphan*/  init_speed; int /*<<< orphan*/  oper_speed; int /*<<< orphan*/  shutdown; TYPE_1__* hu; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bcm_device*) ; 
 int FUNC1 (struct bcm_device*) ; 
 int FUNC2 (struct bcm_device*,int) ; 
 int FUNC3 (struct bcm_device*) ; 
 int /*<<< orphan*/  bcm_proto ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct bcm_device* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct serdev_device*,struct bcm_device*) ; 

__attribute__((used)) static int FUNC10(struct serdev_device *serdev)
{
	struct bcm_device *bcmdev;
	int err;

	bcmdev = FUNC6(&serdev->dev, sizeof(*bcmdev), GFP_KERNEL);
	if (!bcmdev)
		return -ENOMEM;

	bcmdev->dev = &serdev->dev;
#ifdef CONFIG_PM
	bcmdev->hu = &bcmdev->serdev_hu;
#endif
	bcmdev->serdev_hu.serdev = serdev;
	FUNC9(serdev, bcmdev);

	if (FUNC7(&serdev->dev))
		err = FUNC0(bcmdev);
	else
		err = FUNC3(bcmdev);
	if (err)
		return err;

	err = FUNC1(bcmdev);
	if (err)
		return err;

	if (!bcmdev->shutdown) {
		FUNC5(&serdev->dev,
			 "No reset resource, using default baud rate\n");
		bcmdev->oper_speed = bcmdev->init_speed;
	}

	err = FUNC2(bcmdev, false);
	if (err)
		FUNC4(&serdev->dev, "Failed to power down\n");

	return FUNC8(&bcmdev->serdev_hu, &bcm_proto);
}