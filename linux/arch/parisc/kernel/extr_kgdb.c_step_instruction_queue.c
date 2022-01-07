
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int* iaoq; } ;



__attribute__((used)) static void step_instruction_queue(struct pt_regs *regs)
{
 regs->iaoq[0] = regs->iaoq[1];
 regs->iaoq[1] += 4;
}
