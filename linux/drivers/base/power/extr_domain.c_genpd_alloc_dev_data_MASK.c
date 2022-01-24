#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct device* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct TYPE_6__ {int constraint_changed; int /*<<< orphan*/  effective_constraint_ns; } ;
struct generic_pm_domain_data {TYPE_4__ base; TYPE_2__ nb; TYPE_1__ td; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_3__* subsys_data; } ;
struct device {TYPE_5__ power; } ;
struct TYPE_8__ {TYPE_4__* domain_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct generic_pm_domain_data* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  genpd_dev_pm_qos_notifier ; 
 int /*<<< orphan*/  FUNC3 (struct generic_pm_domain_data*) ; 
 struct generic_pm_domain_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct generic_pm_domain_data *FUNC7(struct device *dev)
{
	struct generic_pm_domain_data *gpd_data;
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return FUNC0(ret);

	gpd_data = FUNC4(sizeof(*gpd_data), GFP_KERNEL);
	if (!gpd_data) {
		ret = -ENOMEM;
		goto err_put;
	}

	gpd_data->base.dev = dev;
	gpd_data->td.constraint_changed = true;
	gpd_data->td.effective_constraint_ns = PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS;
	gpd_data->nb.notifier_call = genpd_dev_pm_qos_notifier;

	FUNC5(&dev->power.lock);

	if (dev->power.subsys_data->domain_data) {
		ret = -EINVAL;
		goto err_free;
	}

	dev->power.subsys_data->domain_data = &gpd_data->base;

	FUNC6(&dev->power.lock);

	return gpd_data;

 err_free:
	FUNC6(&dev->power.lock);
	FUNC3(gpd_data);
 err_put:
	FUNC2(dev);
	return FUNC0(ret);
}