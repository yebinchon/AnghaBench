
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_value; } ;
struct TYPE_4__ {TYPE_1__ uw; } ;
struct task_struct {TYPE_2__ thread; } ;


 int arm64_kernel_unmapped_at_el0 () ;
 scalar_t__ is_compat_thread (int ) ;
 int task_thread_info (struct task_struct*) ;
 int * task_user_tls (struct task_struct*) ;
 int tls_preserve_current_state () ;
 int tpidr_el0 ;
 int tpidrro_el0 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static void tls_thread_switch(struct task_struct *next)
{
 tls_preserve_current_state();

 if (is_compat_thread(task_thread_info(next)))
  write_sysreg(next->thread.uw.tp_value, tpidrro_el0);
 else if (!arm64_kernel_unmapped_at_el0())
  write_sysreg(0, tpidrro_el0);

 write_sysreg(*task_user_tls(next), tpidr_el0);
}
