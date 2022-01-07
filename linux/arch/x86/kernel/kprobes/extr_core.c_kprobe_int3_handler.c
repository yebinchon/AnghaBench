
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ip; } ;
struct kprobe_ctlblk {int kprobe_status; } ;
struct kprobe {int (* pre_handler ) (struct kprobe*,struct pt_regs*) ;} ;
typedef scalar_t__ kprobe_opcode_t ;


 scalar_t__ BREAKPOINT_INSTRUCTION ;
 int KPROBE_HIT_ACTIVE ;
 struct kprobe* get_kprobe (scalar_t__*) ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 scalar_t__ kprobe_running () ;
 scalar_t__ reenter_kprobe (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ;
 int reset_current_kprobe () ;
 int set_current_kprobe (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*) ;
 int setup_singlestep (struct kprobe*,struct pt_regs*,struct kprobe_ctlblk*,int ) ;
 int stub1 (struct kprobe*,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int kprobe_int3_handler(struct pt_regs *regs)
{
 kprobe_opcode_t *addr;
 struct kprobe *p;
 struct kprobe_ctlblk *kcb;

 if (user_mode(regs))
  return 0;

 addr = (kprobe_opcode_t *)(regs->ip - sizeof(kprobe_opcode_t));






 kcb = get_kprobe_ctlblk();
 p = get_kprobe(addr);

 if (p) {
  if (kprobe_running()) {
   if (reenter_kprobe(p, regs, kcb))
    return 1;
  } else {
   set_current_kprobe(p, regs, kcb);
   kcb->kprobe_status = KPROBE_HIT_ACTIVE;
   if (!p->pre_handler || !p->pre_handler(p, regs))
    setup_singlestep(p, regs, kcb, 0);
   else
    reset_current_kprobe();
   return 1;
  }
 } else if (*addr != BREAKPOINT_INSTRUCTION) {
  regs->ip = (unsigned long)addr;
  return 1;
 }

 return 0;
}
