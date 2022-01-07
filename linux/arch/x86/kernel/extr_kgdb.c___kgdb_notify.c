
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct die_args {int signr; int trapnr; struct pt_regs* regs; } ;



 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int TIF_SINGLESTEP ;
 int atomic_read (int *) ;
 int kgdb_cpu_doing_single_step ;
 scalar_t__ kgdb_handle_exception (int ,int ,unsigned long,struct pt_regs*) ;
 int single_step_cont (struct pt_regs*,struct die_args*) ;
 int test_thread_flag (int ) ;
 int touch_nmi_watchdog () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static int __kgdb_notify(struct die_args *args, unsigned long cmd)
{
 struct pt_regs *regs = args->regs;

 switch (cmd) {
 case 128:
  if (atomic_read(&kgdb_cpu_doing_single_step) != -1) {
   if (user_mode(regs))
    return single_step_cont(regs, args);
   break;
  } else if (test_thread_flag(TIF_SINGLESTEP))



   return NOTIFY_DONE;

 default:
  if (user_mode(regs))
   return NOTIFY_DONE;
 }

 if (kgdb_handle_exception(args->trapnr, args->signr, cmd, regs))
  return NOTIFY_DONE;


 touch_nmi_watchdog();
 return NOTIFY_STOP;
}
