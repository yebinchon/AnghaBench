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
struct device {scalar_t__ pm_domain; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int) ; 
 int FUNC1 (struct device*) ; 

int FUNC2(struct device *dev, bool power_on)
{
	int ret;

	if (dev->pm_domain)
		return 0;

	ret = FUNC0(dev, power_on);
	if (!ret)
		ret = FUNC1(dev);

	return ret < 0 ? ret : 0;
}