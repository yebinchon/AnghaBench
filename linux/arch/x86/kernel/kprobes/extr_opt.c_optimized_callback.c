
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {unsigned long orig_ax; scalar_t__ ip; scalar_t__ gs; int cs; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_1__ kp; } ;
struct kprobe_ctlblk {int kprobe_status; } ;


 scalar_t__ INT3_SIZE ;
 int KPROBE_HIT_ACTIVE ;
 int __KERNEL_CS ;
 int __this_cpu_write (int ,TYPE_1__*) ;
 int current_kprobe ;
 int get_kernel_rpl () ;
 struct kprobe_ctlblk* get_kprobe_ctlblk () ;
 scalar_t__ kprobe_disabled (TYPE_1__*) ;
 scalar_t__ kprobe_running () ;
 int kprobes_inc_nmissed_count (TYPE_1__*) ;
 int opt_pre_handler (TYPE_1__*,struct pt_regs*) ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void
optimized_callback(struct optimized_kprobe *op, struct pt_regs *regs)
{

 if (kprobe_disabled(&op->kp))
  return;

 preempt_disable();
 if (kprobe_running()) {
  kprobes_inc_nmissed_count(&op->kp);
 } else {
  struct kprobe_ctlblk *kcb = get_kprobe_ctlblk();

  regs->cs = __KERNEL_CS;




  regs->ip = (unsigned long)op->kp.addr + INT3_SIZE;
  regs->orig_ax = ~0UL;

  __this_cpu_write(current_kprobe, &op->kp);
  kcb->kprobe_status = KPROBE_HIT_ACTIVE;
  opt_pre_handler(&op->kp, regs);
  __this_cpu_write(current_kprobe, ((void*)0));
 }
 preempt_enable();
}
