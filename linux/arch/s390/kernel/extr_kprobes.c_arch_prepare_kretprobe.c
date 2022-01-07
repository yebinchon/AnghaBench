
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gprs; } ;
struct kretprobe_instance {int * ret_addr; } ;
typedef int kprobe_opcode_t ;


 int kretprobe_trampoline ;

void arch_prepare_kretprobe(struct kretprobe_instance *ri, struct pt_regs *regs)
{
 ri->ret_addr = (kprobe_opcode_t *) regs->gprs[14];


 regs->gprs[14] = (unsigned long) &kretprobe_trampoline;
}
