
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_2__ {struct pvclock_vcpu_time_info time; } ;


 TYPE_1__* __this_cpu_read (int ) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int pvclock_clocksource_read (struct pvclock_vcpu_time_info*) ;
 int xen_vcpu ;

__attribute__((used)) static u64 xen_clocksource_read(void)
{
        struct pvclock_vcpu_time_info *src;
 u64 ret;

 preempt_disable_notrace();
 src = &__this_cpu_read(xen_vcpu)->time;
 ret = pvclock_clocksource_read(src);
 preempt_enable_notrace();
 return ret;
}
