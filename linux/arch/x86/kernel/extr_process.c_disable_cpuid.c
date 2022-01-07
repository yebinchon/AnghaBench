
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOCPUID ;
 int preempt_disable () ;
 int preempt_enable () ;
 int set_cpuid_faulting (int) ;
 int test_and_set_thread_flag (int ) ;

__attribute__((used)) static void disable_cpuid(void)
{
 preempt_disable();
 if (!test_and_set_thread_flag(TIF_NOCPUID)) {




  set_cpuid_faulting(1);
 }
 preempt_enable();
}
