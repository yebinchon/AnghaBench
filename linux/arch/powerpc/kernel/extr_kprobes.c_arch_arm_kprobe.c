
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kprobe {int addr; } ;


 int BREAKPOINT_INSTRUCTION ;
 int patch_instruction (int ,int ) ;

void arch_arm_kprobe(struct kprobe *p)
{
 patch_instruction(p->addr, BREAKPOINT_INSTRUCTION);
}
