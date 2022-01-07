
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int msr; scalar_t__ nip; } ;
struct kprobe_ctlblk {scalar_t__ kprobe_status; int kprobe_saved_msr; } ;
struct TYPE_2__ {unsigned int* insn; scalar_t__ boostable; } ;
struct kprobe {int (* post_handler ) (struct kprobe*,struct pt_regs*,int ) ;TYPE_1__ ainsn; scalar_t__ (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;
typedef unsigned int kprobe_opcode_t ;


 unsigned int BREAKPOINT_INSTRUCTION ;
 scalar_t__ KPROBE_HIT_ACTIVE ;
 scalar_t__ KPROBE_HIT_SS ;
 scalar_t__ KPROBE_HIT_SSDONE ;
 scalar_t__ KPROBE_REENTER ;
 int MSR_SINGLESTEP ;
 struct kprobe* get_kprobe (unsigned int*) ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 scalar_t__ is_trap (unsigned int) ;
 scalar_t__ kprobe_running () ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;
 int prepare_singlestep (struct kprobe*,struct pt_regs*) ;
 int reset_current_kprobe () ;
 int restore_previous_kprobe (struct kprobe_ctlblk*) ;
 int save_previous_kprobe (struct kprobe_ctlblk*) ;
 int set_current_kprobe (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ;
 scalar_t__ stub1 (struct kprobe*,struct pt_regs*) ;
 int stub2 (struct kprobe*,struct pt_regs*,int ) ;
 int try_to_emulate (struct kprobe*,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int kprobe_handler(struct pt_regs *regs)
{
 struct kprobe *p;
 int ret = 0;
 unsigned int *addr = (unsigned int *)regs->nip;
 struct kprobe_ctlblk *kcb;

 if (user_mode(regs))
  return 0;





 preempt_disable();
 kcb = get_kprobe_ctlblk();


 if (kprobe_running()) {
  p = get_kprobe(addr);
  if (p) {
   kprobe_opcode_t insn = *p->ainsn.insn;
   if (kcb->kprobe_status == KPROBE_HIT_SS &&
     is_trap(insn)) {

    regs->msr &= ~MSR_SINGLESTEP;
    regs->msr |= kcb->kprobe_saved_msr;
    goto no_kprobe;
   }






   save_previous_kprobe(kcb);
   set_current_kprobe(p, regs, kcb);
   kprobes_inc_nmissed_count(p);
   kcb->kprobe_status = KPROBE_REENTER;
   if (p->ainsn.boostable >= 0) {
    ret = try_to_emulate(p, regs);

    if (ret > 0) {
     restore_previous_kprobe(kcb);
     preempt_enable_no_resched();
     return 1;
    }
   }
   prepare_singlestep(p, regs);
   return 1;
  } else if (*addr != BREAKPOINT_INSTRUCTION) {

   kprobe_opcode_t cur_insn = *addr;

   if (is_trap(cur_insn))
    goto no_kprobe;




   ret = 1;
  }
  goto no_kprobe;
 }

 p = get_kprobe(addr);
 if (!p) {
  if (*addr != BREAKPOINT_INSTRUCTION) {





   kprobe_opcode_t cur_insn = *addr;
   if (is_trap(cur_insn))
    goto no_kprobe;







   ret = 1;
  }

  goto no_kprobe;
 }

 kcb->kprobe_status = KPROBE_HIT_ACTIVE;
 set_current_kprobe(p, regs, kcb);
 if (p->pre_handler && p->pre_handler(p, regs)) {

  reset_current_kprobe();
  preempt_enable_no_resched();
  return 1;
 }

 if (p->ainsn.boostable >= 0) {
  ret = try_to_emulate(p, regs);

  if (ret > 0) {
   if (p->post_handler)
    p->post_handler(p, regs, 0);

   kcb->kprobe_status = KPROBE_HIT_SSDONE;
   reset_current_kprobe();
   preempt_enable_no_resched();
   return 1;
  }
 }
 prepare_singlestep(p, regs);
 kcb->kprobe_status = KPROBE_HIT_SS;
 return 1;

no_kprobe:
 preempt_enable_no_resched();
 return ret;
}
