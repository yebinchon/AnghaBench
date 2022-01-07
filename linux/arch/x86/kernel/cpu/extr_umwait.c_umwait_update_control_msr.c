
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_UMWAIT_CONTROL ;
 int READ_ONCE (int ) ;
 int lockdep_assert_irqs_disabled () ;
 int umwait_control_cached ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static void umwait_update_control_msr(void * unused)
{
 lockdep_assert_irqs_disabled();
 wrmsr(MSR_IA32_UMWAIT_CONTROL, READ_ONCE(umwait_control_cached), 0);
}
