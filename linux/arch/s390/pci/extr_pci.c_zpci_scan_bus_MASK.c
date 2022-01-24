#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zpci_dev {TYPE_1__* bus; int /*<<< orphan*/  max_bus_speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_bus_speed; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPCI_BUS_NR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_root_ops ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct zpci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resources ; 
 int /*<<< orphan*/  FUNC4 (struct zpci_dev*) ; 
 int FUNC5 (struct zpci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct zpci_dev *zdev)
{
	FUNC0(resources);
	int ret;

	ret = FUNC5(zdev, &resources);
	if (ret)
		goto error;

	zdev->bus = FUNC3(NULL, ZPCI_BUS_NR, &pci_root_ops,
				      zdev, &resources);
	if (!zdev->bus) {
		ret = -EIO;
		goto error;
	}
	zdev->bus->max_bus_speed = zdev->max_bus_speed;
	FUNC1(zdev->bus);
	return 0;

error:
	FUNC4(zdev);
	FUNC2(&resources);
	return ret;
}