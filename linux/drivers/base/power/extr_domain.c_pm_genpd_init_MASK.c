#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  start; int /*<<< orphan*/  stop; } ;
struct TYPE_4__ {int /*<<< orphan*/  complete; int /*<<< orphan*/  restore_noirq; int /*<<< orphan*/  poweroff_noirq; int /*<<< orphan*/  thaw_noirq; int /*<<< orphan*/  freeze_noirq; int /*<<< orphan*/  resume_noirq; int /*<<< orphan*/  suspend_noirq; int /*<<< orphan*/  prepare; int /*<<< orphan*/  runtime_resume; int /*<<< orphan*/  runtime_suspend; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct generic_pm_domain {int max_off_time_ns; int max_off_time_changed; int has_provider; int flags; int state_count; int /*<<< orphan*/  gpd_list_node; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  cpus; TYPE_3__ dev_ops; TYPE_2__ domain; int /*<<< orphan*/  accounting_time; int /*<<< orphan*/ * provider; scalar_t__ device_count; int /*<<< orphan*/  status; int /*<<< orphan*/  sd_count; int /*<<< orphan*/  power_off_work; struct dev_power_governor* gov; int /*<<< orphan*/  dev_list; int /*<<< orphan*/  slave_links; int /*<<< orphan*/  master_links; } ;
struct dev_power_governor {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GENPD_FLAG_PM_CLK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPD_STATE_ACTIVE ; 
 int /*<<< orphan*/  GPD_STATE_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  genpd_complete ; 
 int /*<<< orphan*/  genpd_freeze_noirq ; 
 scalar_t__ FUNC7 (struct generic_pm_domain*) ; 
 scalar_t__ FUNC8 (struct generic_pm_domain*) ; 
 scalar_t__ FUNC9 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC10 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  genpd_power_off_work_fn ; 
 int /*<<< orphan*/  genpd_poweroff_noirq ; 
 int /*<<< orphan*/  genpd_prepare ; 
 int /*<<< orphan*/  genpd_restore_noirq ; 
 int /*<<< orphan*/  genpd_resume_noirq ; 
 int /*<<< orphan*/  genpd_runtime_resume ; 
 int /*<<< orphan*/  genpd_runtime_suspend ; 
 int FUNC11 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  FUNC12 (struct generic_pm_domain*) ; 
 int /*<<< orphan*/  genpd_suspend_noirq ; 
 int /*<<< orphan*/  genpd_thaw_noirq ; 
 int /*<<< orphan*/  gpd_list ; 
 int /*<<< orphan*/  gpd_list_lock ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pm_clk_resume ; 
 int /*<<< orphan*/  pm_clk_suspend ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC19(struct generic_pm_domain *genpd,
		  struct dev_power_governor *gov, bool is_off)
{
	int ret;

	if (FUNC2(genpd))
		return -EINVAL;

	FUNC0(&genpd->master_links);
	FUNC0(&genpd->slave_links);
	FUNC0(&genpd->dev_list);
	FUNC10(genpd);
	genpd->gov = gov;
	FUNC1(&genpd->power_off_work, genpd_power_off_work_fn);
	FUNC3(&genpd->sd_count, 0);
	genpd->status = is_off ? GPD_STATE_POWER_OFF : GPD_STATE_ACTIVE;
	genpd->device_count = 0;
	genpd->max_off_time_ns = -1;
	genpd->max_off_time_changed = true;
	genpd->provider = NULL;
	genpd->has_provider = false;
	genpd->accounting_time = FUNC13();
	genpd->domain.ops.runtime_suspend = genpd_runtime_suspend;
	genpd->domain.ops.runtime_resume = genpd_runtime_resume;
	genpd->domain.ops.prepare = genpd_prepare;
	genpd->domain.ops.suspend_noirq = genpd_suspend_noirq;
	genpd->domain.ops.resume_noirq = genpd_resume_noirq;
	genpd->domain.ops.freeze_noirq = genpd_freeze_noirq;
	genpd->domain.ops.thaw_noirq = genpd_thaw_noirq;
	genpd->domain.ops.poweroff_noirq = genpd_poweroff_noirq;
	genpd->domain.ops.restore_noirq = genpd_restore_noirq;
	genpd->domain.ops.complete = genpd_complete;

	if (genpd->flags & GENPD_FLAG_PM_CLK) {
		genpd->dev_ops.stop = pm_clk_suspend;
		genpd->dev_ops.start = pm_clk_resume;
	}

	/* Always-on domains must be powered on at initialization. */
	if ((FUNC7(genpd) || FUNC9(genpd)) &&
			!FUNC12(genpd))
		return -EINVAL;

	if (FUNC8(genpd) &&
	    !FUNC18(&genpd->cpus, GFP_KERNEL))
		return -ENOMEM;

	/* Use only one "off" state if there were no states declared */
	if (genpd->state_count == 0) {
		ret = FUNC11(genpd);
		if (ret) {
			if (FUNC8(genpd))
				FUNC6(genpd->cpus);
			return ret;
		}
	} else if (!gov && genpd->state_count > 1) {
		FUNC17("%s: no governor for states\n", genpd->name);
	}

	FUNC5(&genpd->dev);
	FUNC4(&genpd->dev, "%s", genpd->name);

	FUNC15(&gpd_list_lock);
	FUNC14(&genpd->gpd_list_node, &gpd_list);
	FUNC16(&gpd_list_lock);

	return 0;
}