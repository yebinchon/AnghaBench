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
struct platform_driver {int (* probe ) (struct platform_device*) ;} ;
struct platform_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*) ; 
 struct platform_device* FUNC4 (struct device*) ; 
 struct platform_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	int error = -ENODEV;
	struct platform_driver *drv;
	struct platform_device *of_dev;

	drv = FUNC5(dev->driver);
	of_dev = FUNC4(dev);

	if (!drv->probe)
		return error;

	FUNC0(of_dev);

	if (FUNC2(dev, dev->driver))
		error = drv->probe(of_dev);
	if (error)
		FUNC1(of_dev);

	return error;
}