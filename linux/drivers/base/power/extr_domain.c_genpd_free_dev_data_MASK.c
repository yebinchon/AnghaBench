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
struct generic_pm_domain_data {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* subsys_data; } ;
struct device {TYPE_2__ power; } ;
struct TYPE_3__ {int /*<<< orphan*/ * domain_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct generic_pm_domain_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev,
				struct generic_pm_domain_data *gpd_data)
{
	FUNC2(&dev->power.lock);

	dev->power.subsys_data->domain_data = NULL;

	FUNC3(&dev->power.lock);

	FUNC1(gpd_data);
	FUNC0(dev);
}