
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct die_args {char const* str; long err; int trapnr; int signr; struct pt_regs* regs; } ;


 int NOTIFY_DONE ;
 int __kgdb_notify (struct die_args*,int) ;
 int kgdb_io_module_registered ;

int kgdb_ll_trap(int cmd, const char *str,
   struct pt_regs *regs, long err, int trap, int sig)
{
 struct die_args args = {
  .regs = regs,
  .str = str,
  .err = err,
  .trapnr = trap,
  .signr = sig,

 };

 if (!kgdb_io_module_registered)
  return NOTIFY_DONE;

 return __kgdb_notify(&args, cmd);
}
