
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ disable_depth; scalar_t__ accounting_timestamp; scalar_t__ runtime_status; int active_time; int suspended_time; } ;
struct device {TYPE_1__ power; } ;


 scalar_t__ RPM_SUSPENDED ;
 scalar_t__ ktime_get_mono_fast_ns () ;

__attribute__((used)) static void update_pm_runtime_accounting(struct device *dev)
{
 u64 now, last, delta;

 if (dev->power.disable_depth > 0)
  return;

 last = dev->power.accounting_timestamp;

 now = ktime_get_mono_fast_ns();
 dev->power.accounting_timestamp = now;






 if (now < last)
  return;

 delta = now - last;

 if (dev->power.runtime_status == RPM_SUSPENDED)
  dev->power.suspended_time += delta;
 else
  dev->power.active_time += delta;
}
