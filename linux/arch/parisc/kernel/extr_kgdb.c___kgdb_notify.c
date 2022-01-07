
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct die_args {int signr; struct pt_regs* regs; } ;


 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 scalar_t__ kgdb_handle_exception (int,int ,unsigned long,struct pt_regs*) ;

__attribute__((used)) static int __kgdb_notify(struct die_args *args, unsigned long cmd)
{
 struct pt_regs *regs = args->regs;

 if (kgdb_handle_exception(1, args->signr, cmd, regs))
  return NOTIFY_DONE;
 return NOTIFY_STOP;
}
