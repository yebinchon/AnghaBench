
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_args {int trapnr; int regs; int err; int signr; } ;



 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int TIF_SINGLESTEP ;
 int kgdb_handle_exception (int,int ,int ,int ) ;
 int test_thread_flag (int ) ;

__attribute__((used)) static int __kgdb_notify(struct die_args *args, unsigned long cmd)
{
 int ret;

 switch (cmd) {
 case 128:




  if (test_thread_flag(TIF_SINGLESTEP))
   return NOTIFY_DONE;

  ret = kgdb_handle_exception(args->trapnr & 0xff, args->signr,
         args->err, args->regs);
  if (ret)
   return NOTIFY_DONE;

  break;
 }

 return NOTIFY_STOP;
}
