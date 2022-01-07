
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long ARM_pc; unsigned long ARM_ORIG_r0; } ;
struct TYPE_2__ {int (* insn_singlestep ) (int ,TYPE_1__*,struct pt_regs*) ;int kprobe_direct_exec; } ;
struct kprobe {TYPE_1__ ainsn; int opcode; scalar_t__ addr; } ;
struct optimized_kprobe {struct kprobe kp; } ;
struct kprobe_ctlblk {int kprobe_status; } ;


 int KPROBE_HIT_ACTIVE ;
 int __this_cpu_write (int ,struct kprobe*) ;
 int current_kprobe ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 scalar_t__ kprobe_running () ;
 int kprobes_inc_nmissed_count (struct kprobe*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int opt_pre_handler (struct kprobe*,struct pt_regs*) ;
 int stub1 (int ,TYPE_1__*,struct pt_regs*) ;

__attribute__((used)) static void
optimized_callback(struct optimized_kprobe *op, struct pt_regs *regs)
{
 unsigned long flags;
 struct kprobe *p = &op->kp;
 struct kprobe_ctlblk *kcb;


 regs->ARM_pc = (unsigned long)op->kp.addr;
 regs->ARM_ORIG_r0 = ~0UL;

 local_irq_save(flags);
 kcb = get_kprobe_ctlblk();

 if (kprobe_running()) {
  kprobes_inc_nmissed_count(&op->kp);
 } else {
  __this_cpu_write(current_kprobe, &op->kp);
  kcb->kprobe_status = KPROBE_HIT_ACTIVE;
  opt_pre_handler(&op->kp, regs);
  __this_cpu_write(current_kprobe, ((void*)0));
 }





 if (!p->ainsn.kprobe_direct_exec)
  op->kp.ainsn.insn_singlestep(p->opcode, &p->ainsn, regs);

 local_irq_restore(flags);
}
