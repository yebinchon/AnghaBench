
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TIF_NOTIFY_RESUME ;
 int TIF_SIGPENDING ;
 int do_signal (struct pt_regs*) ;
 scalar_t__ test_and_clear_thread_flag (int ) ;
 scalar_t__ test_thread_flag (int ) ;
 int tracehook_notify_resume (struct pt_regs*) ;

void do_notify_resume(struct pt_regs *regs)
{
 if (test_thread_flag(TIF_SIGPENDING))
  do_signal(regs);

 if (test_and_clear_thread_flag(TIF_NOTIFY_RESUME))
  tracehook_notify_resume(regs);
}
