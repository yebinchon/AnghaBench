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
struct bcm_device {int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  bcm_device_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bcm_device* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct bcm_device *dev = FUNC4(pdev);

	FUNC2(&bcm_device_lock);
	FUNC1(&dev->list);
	FUNC3(&bcm_device_lock);

	FUNC0(&pdev->dev, "%s device unregistered.\n", dev->name);

	return 0;
}