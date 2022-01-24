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
struct device {int /*<<< orphan*/  driver; } ;
struct amba_driver {int (* remove ) (struct amba_device*) ;} ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct amba_device*) ; 
 struct amba_device* FUNC7 (struct device*) ; 
 struct amba_driver* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct amba_device *pcdev = FUNC7(dev);
	struct amba_driver *drv = FUNC8(dev->driver);
	int ret;

	FUNC3(dev);
	ret = drv->remove(pcdev);
	FUNC4(dev);

	/* Undo the runtime PM settings in amba_probe() */
	FUNC2(dev);
	FUNC5(dev);
	FUNC4(dev);

	FUNC0(pcdev);
	FUNC1(dev, true);

	return ret;
}