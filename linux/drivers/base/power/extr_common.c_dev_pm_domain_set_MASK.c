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
struct device {struct dev_pm_domain* pm_domain; } ;
struct dev_pm_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

void FUNC3(struct device *dev, struct dev_pm_domain *pd)
{
	if (dev->pm_domain == pd)
		return;

	FUNC0(pd && FUNC1(dev),
	     "PM domains can only be changed for unbound devices\n");
	dev->pm_domain = pd;
	FUNC2(dev);
}