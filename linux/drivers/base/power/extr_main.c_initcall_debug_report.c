
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int dev_info (struct device*,char*,void*,int,unsigned long long) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int pm_print_times_enabled ;

__attribute__((used)) static void initcall_debug_report(struct device *dev, ktime_t calltime,
      void *cb, int error)
{
 ktime_t rettime;
 s64 nsecs;

 if (!pm_print_times_enabled)
  return;

 rettime = ktime_get();
 nsecs = (s64) ktime_to_ns(ktime_sub(rettime, calltime));

 dev_info(dev, "%pS returned %d after %Ld usecs\n", cb, error,
   (unsigned long long)nsecs >> 10);
}
