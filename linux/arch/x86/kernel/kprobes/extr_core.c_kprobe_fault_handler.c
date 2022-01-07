
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ip; int flags; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; int kprobe_old_flags; } ;
struct TYPE_2__ {scalar_t__ insn; } ;
struct kprobe {scalar_t__ (* fault_handler ) (struct kprobe*,struct pt_regs*,int) ;scalar_t__ addr; TYPE_1__ ainsn; } ;


 scalar_t__ KPROBE_HIT_ACTIVE ;
 scalar_t__ KPROBE_HIT_SS ;
 scalar_t__ KPROBE_HIT_SSDONE ;
 scalar_t__ KPROBE_REENTER ;
 int WARN_ON (int) ;
 int X86_EFLAGS_TF ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int reset_current_kprobe () ;
 int restore_previous_kprobe (struct kprobe_ctlblk*) ;
 scalar_t__ stub1 (struct kprobe*,struct pt_regs*,int) ;
 scalar_t__ unlikely (int) ;

int kprobe_fault_handler(struct pt_regs *regs, int trapnr)
{
 struct kprobe *cur = kprobe_running();
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();

 if (unlikely(regs->ip == (unsigned long)cur->ainsn.insn)) {

  WARN_ON(kcb->kprobe_status != KPROBE_HIT_SS &&
   kcb->kprobe_status != KPROBE_REENTER);







  regs->ip = (unsigned long)cur->addr;





  regs->flags &= ~X86_EFLAGS_TF;





  regs->flags |= kcb->kprobe_old_flags;

  if (kcb->kprobe_status == KPROBE_REENTER)
   restore_previous_kprobe(kcb);
  else
   reset_current_kprobe();
 } else if (kcb->kprobe_status == KPROBE_HIT_ACTIVE ||
     kcb->kprobe_status == KPROBE_HIT_SSDONE) {





  kprobes_inc_nmissed_count(cur);
  if (cur->fault_handler && cur->fault_handler(cur, regs, trapnr))
   return 1;
 }

 return 0;
}
