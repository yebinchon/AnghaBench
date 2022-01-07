
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_args {int trapnr; int regs; int err; int signr; } ;


 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int atomic_read (int *) ;
 int kgdb_active ;
 scalar_t__ kgdb_handle_exception (int,int ,int ,int ) ;
 int kgdb_nmicallback (int ,int ) ;
 int smp_processor_id () ;
 scalar_t__ user_mode (int ) ;

__attribute__((used)) static int __kgdb_notify(struct die_args *args, unsigned long cmd)
{

 if (atomic_read(&kgdb_active) != -1) {
  kgdb_nmicallback(smp_processor_id(), args->regs);
  return NOTIFY_STOP;
 }

 if (user_mode(args->regs))
  return NOTIFY_DONE;

 if (kgdb_handle_exception(args->trapnr & 0xff, args->signr, args->err,
        args->regs))
  return NOTIFY_DONE;

 return NOTIFY_STOP;
}
