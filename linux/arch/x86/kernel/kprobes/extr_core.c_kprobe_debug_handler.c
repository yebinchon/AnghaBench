
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int flags; } ;
struct kprobe_ctlblk {int kprobe_saved_flags; scalar_t__ kprobe_status; } ;
struct kprobe {int (* post_handler ) (struct kprobe*,struct pt_regs*,int ) ;} ;


 scalar_t__ KPROBE_HIT_SSDONE ;
 scalar_t__ KPROBE_REENTER ;
 int X86_EFLAGS_TF ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 struct kprobe* kprobe_running () ;
 int reset_current_kprobe () ;
 int restore_previous_kprobe (struct kprobe_ctlblk*) ;
 int resume_execution (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ;
 int stub1 (struct kprobe*,struct pt_regs*,int ) ;

int kprobe_debug_handler(struct pt_regs *regs)
{
 struct kprobe *cur = kprobe_running();
 struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();

 if (!cur)
  return 0;

 resume_execution(cur, regs, kcb);
 regs->flags |= kcb->kprobe_saved_flags;

 if ((kcb->kprobe_status != KPROBE_REENTER) && cur->post_handler) {
  kcb->kprobe_status = KPROBE_HIT_SSDONE;
  cur->post_handler(cur, regs, 0);
 }


 if (kcb->kprobe_status == KPROBE_REENTER) {
  restore_previous_kprobe(kcb);
  goto out;
 }
 reset_current_kprobe();
out:





 if (regs->flags & X86_EFLAGS_TF)
  return 0;

 return 1;
}
