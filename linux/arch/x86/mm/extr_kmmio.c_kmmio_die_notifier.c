
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct die_args {int regs; int err; } ;


 unsigned long DIE_DEBUG ;
 unsigned long DR_STEP ;
 scalar_t__ ERR_PTR (int ) ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int post_kmmio_handler (unsigned long,int ) ;

__attribute__((used)) static int
kmmio_die_notifier(struct notifier_block *nb, unsigned long val, void *args)
{
 struct die_args *arg = args;
 unsigned long* dr6_p = (unsigned long *)ERR_PTR(arg->err);

 if (val == DIE_DEBUG && (*dr6_p & DR_STEP))
  if (post_kmmio_handler(*dr6_p, arg->regs) == 1) {




   *dr6_p &= ~DR_STEP;
   return NOTIFY_STOP;
  }

 return NOTIFY_DONE;
}
