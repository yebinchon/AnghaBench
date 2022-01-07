
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {struct pt_regs regs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int TIF_NOTIFY_RESUME ;
 int TIF_SIGPENDING ;
 TYPE_2__* current ;
 int do_signal (struct pt_regs*) ;
 scalar_t__ need_resched () ;
 int schedule () ;
 scalar_t__ test_and_clear_thread_flag (int ) ;
 scalar_t__ test_thread_flag (int ) ;
 int tracehook_notify_resume (struct pt_regs*) ;

void interrupt_end(void)
{
 struct pt_regs *regs = &current->thread.regs;

 if (need_resched())
  schedule();
 if (test_thread_flag(TIF_SIGPENDING))
  do_signal(regs);
 if (test_and_clear_thread_flag(TIF_NOTIFY_RESUME))
  tracehook_notify_resume(regs);
}
