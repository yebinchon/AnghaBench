
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOCPUID ;
 int preempt_disable () ;
 int preempt_enable () ;
 int set_cpuid_faulting (int) ;
 scalar_t__ test_and_clear_thread_flag (int ) ;

__attribute__((used)) static void enable_cpuid(void)
{
 preempt_disable();
 if (test_and_clear_thread_flag(TIF_NOCPUID)) {




  set_cpuid_faulting(0);
 }
 preempt_enable();
}
