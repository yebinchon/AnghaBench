
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int pvclock_clocksource_read (int ) ;
 int this_cpu_pvti () ;

__attribute__((used)) static u64 kvm_clock_read(void)
{
 u64 ret;

 preempt_disable_notrace();
 ret = pvclock_clocksource_read(this_cpu_pvti());
 preempt_enable_notrace();
 return ret;
}
