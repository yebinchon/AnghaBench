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
struct generic_pm_domain_data {unsigned int performance_state; } ;
struct generic_pm_domain {int /*<<< orphan*/  set_performance_state; } ;
struct TYPE_4__ {TYPE_1__* subsys_data; } ;
struct device {TYPE_2__ power; } ;
struct TYPE_3__ {int /*<<< orphan*/  domain_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct generic_pm_domain*,unsigned int) ; 
 int FUNC2 (struct generic_pm_domain*,unsigned int,int /*<<< orphan*/ ) ; 
 struct generic_pm_domain* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct generic_pm_domain*) ; 
 struct generic_pm_domain_data* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct device *dev, unsigned int state)
{
	struct generic_pm_domain *genpd;
	struct generic_pm_domain_data *gpd_data;
	unsigned int prev;
	int ret;

	genpd = FUNC3(dev);
	if (!genpd)
		return -ENODEV;

	if (FUNC7(!genpd->set_performance_state))
		return -EINVAL;

	if (FUNC0(!dev->power.subsys_data ||
		     !dev->power.subsys_data->domain_data))
		return -EINVAL;

	FUNC4(genpd);

	gpd_data = FUNC6(dev->power.subsys_data->domain_data);
	prev = gpd_data->performance_state;
	gpd_data->performance_state = state;

	state = FUNC1(genpd, state);
	ret = FUNC2(genpd, state, 0);
	if (ret)
		gpd_data->performance_state = prev;

	FUNC5(genpd);

	return ret;
}