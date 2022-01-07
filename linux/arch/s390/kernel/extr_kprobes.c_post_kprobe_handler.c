
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; } ;
struct kprobe {int (* post_handler ) (struct kprobe*,struct pt_regs*,int ) ;} ;


 scalar_t__ KPROBE_HIT_SSDONE ;
 scalar_t__ KPROBE_REENTER ;
 int PSW_MASK_PER ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int pop_kprobe (struct kprobe_ctlblk*) ;
 int preempt_enable_no_resched () ;
 int resume_execution (struct kprobe*,struct pt_regs*) ;
 int stub1 (struct kprobe*,struct pt_regs*,int ) ;

__attribute__((used)) static int post_kprobe_handler(struct pt_regs *regs)
{
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();
 struct kprobe *p = kprobe_running();

 if (!p)
  return 0;

 if (kcb->kprobe_status != KPROBE_REENTER && p->post_handler) {
  kcb->kprobe_status = KPROBE_HIT_SSDONE;
  p->post_handler(p, regs, 0);
 }

 resume_execution(p, regs);
 pop_kprobe(kcb);
 preempt_enable_no_resched();






 if (regs->psw.mask & PSW_MASK_PER)
  return 0;

 return 1;
}
