
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int TIF_NOCPUID ;
 int TIF_SSBD ;
 int clear_thread_flag (int ) ;
 int current ;
 int enable_cpuid () ;
 int speculation_ctrl_update (int ) ;
 int task_clear_spec_ssb_disable (int ) ;
 int task_clear_spec_ssb_noexec (int ) ;
 scalar_t__ task_spec_ssb_noexec (int ) ;
 TYPE_1__* task_thread_info (int ) ;
 scalar_t__ test_thread_flag (int ) ;

void arch_setup_new_exec(void)
{

 if (test_thread_flag(TIF_NOCPUID))
  enable_cpuid();





 if (test_thread_flag(TIF_SSBD) &&
     task_spec_ssb_noexec(current)) {
  clear_thread_flag(TIF_SSBD);
  task_clear_spec_ssb_disable(current);
  task_clear_spec_ssb_noexec(current);
  speculation_ctrl_update(task_thread_info(current)->flags);
 }
}
