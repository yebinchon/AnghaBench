
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int start; int stop; } ;
struct TYPE_4__ {int complete; int restore_noirq; int poweroff_noirq; int thaw_noirq; int freeze_noirq; int resume_noirq; int suspend_noirq; int prepare; int runtime_resume; int runtime_suspend; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct generic_pm_domain {int max_off_time_ns; int max_off_time_changed; int has_provider; int flags; int state_count; int gpd_list_node; int name; int dev; int cpus; TYPE_3__ dev_ops; TYPE_2__ domain; int accounting_time; int * provider; scalar_t__ device_count; int status; int sd_count; int power_off_work; struct dev_power_governor* gov; int dev_list; int slave_links; int master_links; } ;
struct dev_power_governor {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GENPD_FLAG_PM_CLK ;
 int GFP_KERNEL ;
 int GPD_STATE_ACTIVE ;
 int GPD_STATE_POWER_OFF ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct generic_pm_domain*) ;
 int atomic_set (int *,int ) ;
 int dev_set_name (int *,char*,int ) ;
 int device_initialize (int *) ;
 int free_cpumask_var (int ) ;
 int genpd_complete ;
 int genpd_freeze_noirq ;
 scalar_t__ genpd_is_always_on (struct generic_pm_domain*) ;
 scalar_t__ genpd_is_cpu_domain (struct generic_pm_domain*) ;
 scalar_t__ genpd_is_rpm_always_on (struct generic_pm_domain*) ;
 int genpd_lock_init (struct generic_pm_domain*) ;
 int genpd_power_off_work_fn ;
 int genpd_poweroff_noirq ;
 int genpd_prepare ;
 int genpd_restore_noirq ;
 int genpd_resume_noirq ;
 int genpd_runtime_resume ;
 int genpd_runtime_suspend ;
 int genpd_set_default_power_state (struct generic_pm_domain*) ;
 int genpd_status_on (struct generic_pm_domain*) ;
 int genpd_suspend_noirq ;
 int genpd_thaw_noirq ;
 int gpd_list ;
 int gpd_list_lock ;
 int ktime_get () ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_clk_resume ;
 int pm_clk_suspend ;
 int pr_warn (char*,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

int pm_genpd_init(struct generic_pm_domain *genpd,
    struct dev_power_governor *gov, bool is_off)
{
 int ret;

 if (IS_ERR_OR_NULL(genpd))
  return -EINVAL;

 INIT_LIST_HEAD(&genpd->master_links);
 INIT_LIST_HEAD(&genpd->slave_links);
 INIT_LIST_HEAD(&genpd->dev_list);
 genpd_lock_init(genpd);
 genpd->gov = gov;
 INIT_WORK(&genpd->power_off_work, genpd_power_off_work_fn);
 atomic_set(&genpd->sd_count, 0);
 genpd->status = is_off ? GPD_STATE_POWER_OFF : GPD_STATE_ACTIVE;
 genpd->device_count = 0;
 genpd->max_off_time_ns = -1;
 genpd->max_off_time_changed = 1;
 genpd->provider = ((void*)0);
 genpd->has_provider = 0;
 genpd->accounting_time = ktime_get();
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


 if ((genpd_is_always_on(genpd) || genpd_is_rpm_always_on(genpd)) &&
   !genpd_status_on(genpd))
  return -EINVAL;

 if (genpd_is_cpu_domain(genpd) &&
     !zalloc_cpumask_var(&genpd->cpus, GFP_KERNEL))
  return -ENOMEM;


 if (genpd->state_count == 0) {
  ret = genpd_set_default_power_state(genpd);
  if (ret) {
   if (genpd_is_cpu_domain(genpd))
    free_cpumask_var(genpd->cpus);
   return ret;
  }
 } else if (!gov && genpd->state_count > 1) {
  pr_warn("%s: no governor for states\n", genpd->name);
 }

 device_initialize(&genpd->dev);
 dev_set_name(&genpd->dev, "%s", genpd->name);

 mutex_lock(&gpd_list_lock);
 list_add(&genpd->gpd_list_node, &gpd_list);
 mutex_unlock(&gpd_list_lock);

 return 0;
}
