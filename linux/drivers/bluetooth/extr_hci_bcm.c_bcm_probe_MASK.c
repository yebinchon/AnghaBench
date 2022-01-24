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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct bcm_device {int /*<<< orphan*/  list; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bcm_device*) ; 
 int /*<<< orphan*/  bcm_device_list ; 
 int /*<<< orphan*/  bcm_device_lock ; 
 int FUNC1 (struct bcm_device*) ; 
 int FUNC2 (struct bcm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct bcm_device* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct bcm_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct bcm_device *dev;
	int ret;

	dev = FUNC5(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->dev = &pdev->dev;
	dev->irq = FUNC10(pdev, 0);

	if (FUNC6(&pdev->dev)) {
		ret = FUNC0(dev);
		if (ret)
			return ret;
	}

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC11(pdev, dev);

	FUNC4(&pdev->dev, "%s device registered.\n", dev->name);

	/* Place this instance on the device list */
	FUNC8(&bcm_device_lock);
	FUNC7(&dev->list, &bcm_device_list);
	FUNC9(&bcm_device_lock);

	ret = FUNC2(dev, false);
	if (ret)
		FUNC3(&pdev->dev, "Failed to power down\n");

	return 0;
}