
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct generic_pm_domain {unsigned int state_idx; int (* power_on ) (struct generic_pm_domain*) ;int max_off_time_changed; int name; TYPE_1__* states; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_2__ {scalar_t__ power_on_latency_ns; } ;


 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int pr_debug (char*,int ,char*,scalar_t__) ;
 int stub1 (struct generic_pm_domain*) ;
 int stub2 (struct generic_pm_domain*) ;

__attribute__((used)) static int _genpd_power_on(struct generic_pm_domain *genpd, bool timed)
{
 unsigned int state_idx = genpd->state_idx;
 ktime_t time_start;
 s64 elapsed_ns;
 int ret;

 if (!genpd->power_on)
  return 0;

 if (!timed)
  return genpd->power_on(genpd);

 time_start = ktime_get();
 ret = genpd->power_on(genpd);
 if (ret)
  return ret;

 elapsed_ns = ktime_to_ns(ktime_sub(ktime_get(), time_start));
 if (elapsed_ns <= genpd->states[state_idx].power_on_latency_ns)
  return ret;

 genpd->states[state_idx].power_on_latency_ns = elapsed_ns;
 genpd->max_off_time_changed = 1;
 pr_debug("%s: Power-%s latency exceeded, new value %lld ns\n",
   genpd->name, "on", elapsed_ns);

 return ret;
}
