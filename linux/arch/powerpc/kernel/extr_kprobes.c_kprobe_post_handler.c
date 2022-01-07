
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long nip; int msr; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; int kprobe_saved_msr; } ;
struct TYPE_2__ {scalar_t__ insn; } ;
struct kprobe {scalar_t__ addr; int (* post_handler ) (struct kprobe*,struct pt_regs*,int ) ;TYPE_1__ ainsn; } ;


 scalar_t__ KPROBE_HIT_SSDONE ;
 scalar_t__ KPROBE_REENTER ;
 int MSR_SINGLESTEP ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int preempt_enable_no_resched () ;
 int reset_current_kprobe () ;
 int restore_previous_kprobe (struct kprobe_ctlblk*) ;
 int stub1 (struct kprobe*,struct pt_regs*,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int kprobe_post_handler(struct pt_regs *regs)
{
 struct kprobe *cur = kprobe_running();
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();

 if (!cur || user_mode(regs))
  return 0;


 if (((unsigned long)cur->ainsn.insn + 4) != regs->nip)
  return 0;

 if ((kcb->kprobe_status != KPROBE_REENTER) && cur->post_handler) {
  kcb->kprobe_status = KPROBE_HIT_SSDONE;
  cur->post_handler(cur, regs, 0);
 }


 regs->nip = (unsigned long)cur->addr + 4;
 regs->msr |= kcb->kprobe_saved_msr;


 if (kcb->kprobe_status == KPROBE_REENTER) {
  restore_previous_kprobe(kcb);
  goto out;
 }
 reset_current_kprobe();
out:
 preempt_enable_no_resched();






 if (regs->msr & MSR_SINGLESTEP)
  return 0;

 return 1;
}
