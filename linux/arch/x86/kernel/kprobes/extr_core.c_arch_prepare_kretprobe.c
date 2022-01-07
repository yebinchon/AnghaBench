
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct kretprobe_instance {unsigned long* fp; int * ret_addr; } ;
typedef int kprobe_opcode_t ;


 int kretprobe_trampoline ;
 unsigned long* stack_addr (struct pt_regs*) ;

void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs *regs)
{
 unsigned long *sara = stack_addr(regs);

 ri->ret_addr = (kprobe_opcode_t *) *sara;
 ri->fp = sara;


 *sara = (unsigned long) &kretprobe_trampoline;
}
