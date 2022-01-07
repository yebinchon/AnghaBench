
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {unsigned long nip; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct optimized_kprobe {TYPE_1__ kp; } ;
struct TYPE_7__ {int kprobe_status; } ;


 int KPROBE_HIT_ACTIVE ;
 int __this_cpu_write (int ,TYPE_1__*) ;
 int current_kprobe ;
 TYPE_4__* get_kprobe_ctlblk () ;
 scalar_t__ kprobe_disabled (TYPE_1__*) ;
 scalar_t__ kprobe_running () ;
 int kprobes_inc_nmissed_count (TYPE_1__*) ;
 int opt_pre_handler (TYPE_1__*,struct pt_regs*) ;
 int preempt_disable () ;
 int preempt_enable_no_resched () ;

__attribute__((used)) static void optimized_callback(struct optimized_kprobe *op,
          struct pt_regs *regs)
{

 if (kprobe_disabled(&op->kp))
  return;

 preempt_disable();

 if (kprobe_running()) {
  kprobes_inc_nmissed_count(&op->kp);
 } else {
  __this_cpu_write(current_kprobe, &op->kp);
  regs->nip = (unsigned long)op->kp.addr;
  get_kprobe_ctlblk()->kprobe_status = KPROBE_HIT_ACTIVE;
  opt_pre_handler(&op->kp, regs);
  __this_cpu_write(current_kprobe, ((void*)0));
 }

 preempt_enable_no_resched();
}
