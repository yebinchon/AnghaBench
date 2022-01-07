
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_NOTSC ;
 int X86_CR4_TSD ;
 int cr4_clear_bits (int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ test_and_clear_thread_flag (int ) ;

__attribute__((used)) static void enable_TSC(void)
{
 preempt_disable();
 if (test_and_clear_thread_flag(TIF_NOTSC))




  cr4_clear_bits(X86_CR4_TSD);
 preempt_enable();
}
