
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct notifier_block {int dummy; } ;
struct die_args {int trapnr; struct pt_regs* regs; } ;





 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int PSW_MASK_EXT ;
 int PSW_MASK_IO ;
 int PSW_MASK_PER ;
 int kprobe_handler (struct pt_regs*) ;
 int kprobe_running () ;
 int kprobe_trap_handler (struct pt_regs*,int ) ;
 int local_irq_disable () ;
 int local_irq_restore (int) ;
 int post_kprobe_handler (struct pt_regs*) ;
 int preemptible () ;

int kprobe_exceptions_notify(struct notifier_block *self,
        unsigned long val, void *data)
{
 struct die_args *args = (struct die_args *) data;
 struct pt_regs *regs = args->regs;
 int ret = NOTIFY_DONE;

 if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
  local_irq_disable();

 switch (val) {
 case 130:
  if (kprobe_handler(regs))
   ret = NOTIFY_STOP;
  break;
 case 129:
  if (post_kprobe_handler(regs))
   ret = NOTIFY_STOP;
  break;
 case 128:
  if (!preemptible() && kprobe_running() &&
      kprobe_trap_handler(regs, args->trapnr))
   ret = NOTIFY_STOP;
  break;
 default:
  break;
 }

 if (regs->psw.mask & (PSW_MASK_IO | PSW_MASK_EXT))
  local_irq_restore(regs->psw.mask & ~PSW_MASK_PER);

 return ret;
}
