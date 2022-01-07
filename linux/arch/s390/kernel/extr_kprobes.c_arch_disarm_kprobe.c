
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_insn_args {int arm_kprobe; struct kprobe* p; } ;
struct kprobe {int dummy; } ;


 int stop_machine_cpuslocked (int ,struct swap_insn_args*,int *) ;
 int swap_instruction ;

void arch_disarm_kprobe(struct kprobe *p)
{
 struct swap_insn_args args = {.p = p, .arm_kprobe = 0};

 stop_machine_cpuslocked(swap_instruction, &args, ((void*)0));
}
