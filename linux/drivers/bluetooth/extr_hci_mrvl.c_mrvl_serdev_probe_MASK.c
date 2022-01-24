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
struct mrvl_serdev {TYPE_1__ hu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mrvl_serdev* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mrvl_proto ; 
 int /*<<< orphan*/  FUNC2 (struct serdev_device*,struct mrvl_serdev*) ; 

__attribute__((used)) static int FUNC3(struct serdev_device *serdev)
{
	struct mrvl_serdev *mrvldev;

	mrvldev = FUNC0(&serdev->dev, sizeof(*mrvldev), GFP_KERNEL);
	if (!mrvldev)
		return -ENOMEM;

	mrvldev->hu.serdev = serdev;
	FUNC2(serdev, mrvldev);

	return FUNC1(&mrvldev->hu, &mrvl_proto);
}