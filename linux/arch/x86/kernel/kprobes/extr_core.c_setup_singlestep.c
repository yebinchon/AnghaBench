
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ip; int flags; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct TYPE_2__ {scalar_t__ insn; scalar_t__ boostable; } ;
struct kprobe {scalar_t__ opcode; TYPE_1__ ainsn; scalar_t__ addr; int post_handler; } ;


 scalar_t__ BREAKPOINT_INSTRUCTION ;
 int KPROBE_HIT_SS ;
 int KPROBE_REENTER ;
 int X86_EFLAGS_IF ;
 int X86_EFLAGS_TF ;
 int clear_btf () ;
 int reset_current_kprobe () ;
 int save_previous_kprobe (struct kprobe_ctlblk*) ;
 int set_current_kprobe (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ;
 scalar_t__ setup_detour_execution (struct kprobe*,struct pt_regs*,int) ;

__attribute__((used)) static void setup_singlestep(struct kprobe *p, struct pt_regs *regs,
        struct kprobe_ctlblk *kcb, int reenter)
{
 if (setup_detour_execution(p, regs, reenter))
  return;


 if (p->ainsn.boostable && !p->post_handler) {

  if (!reenter)
   reset_current_kprobe();





  regs->ip = (unsigned long)p->ainsn.insn;
  return;
 }

 if (reenter) {
  save_previous_kprobe(kcb);
  set_current_kprobe(p, regs, kcb);
  kcb->kprobe_status = KPROBE_REENTER;
 } else
  kcb->kprobe_status = KPROBE_HIT_SS;

 clear_btf();
 regs->flags |= X86_EFLAGS_TF;
 regs->flags &= ~X86_EFLAGS_IF;

 if (p->opcode == BREAKPOINT_INSTRUCTION)
  regs->ip = (unsigned long)p->addr;
 else
  regs->ip = (unsigned long)p->ainsn.insn;
}
