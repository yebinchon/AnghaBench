
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct pt_regs {TYPE_2__ psw; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct TYPE_3__ {scalar_t__ insn; } ;
struct kprobe {TYPE_1__ ainsn; scalar_t__ (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;


 int KPROBE_HIT_ACTIVE ;
 int KPROBE_HIT_SS ;
 int KPROBE_REENTER ;
 int enable_singlestep (struct kprobe_ctlblk*,struct pt_regs*,unsigned long) ;
 struct kprobe* get_kprobe (void*) ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 int kprobe_reenter_check (struct kprobe_ctlblk*,struct kprobe*) ;
 scalar_t__ kprobe_running () ;
 int pop_kprobe (struct kprobe_ctlblk*) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int push_kprobe (struct kprobe_ctlblk*,struct kprobe*) ;
 scalar_t__ stub1 (struct kprobe*,struct pt_regs*) ;

__attribute__((used)) static int kprobe_handler(struct pt_regs *regs)
{
 struct kprobe_ctlblk *kcb;
 struct kprobe *p;






 preempt_disable();
 kcb = get_kprobe_ctlblk();
 p = get_kprobe((void *)(regs->psw.addr - 2));

 if (p) {
  if (kprobe_running()) {
   kprobe_reenter_check(kcb, p);
   push_kprobe(kcb, p);
   kcb->kprobe_status = KPROBE_REENTER;
  } else {







   push_kprobe(kcb, p);
   kcb->kprobe_status = KPROBE_HIT_ACTIVE;
   if (p->pre_handler && p->pre_handler(p, regs)) {
    pop_kprobe(kcb);
    preempt_enable_no_resched();
    return 1;
   }
   kcb->kprobe_status = KPROBE_HIT_SS;
  }
  enable_singlestep(kcb, regs, (unsigned long) p->ainsn.insn);
  return 1;
 }





 preempt_enable_no_resched();
 return 0;
}
