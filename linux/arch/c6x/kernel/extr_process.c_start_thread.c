
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {unsigned int pc; unsigned long sp; int tsr; } ;
struct TYPE_3__ {unsigned long usp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;

void start_thread(struct pt_regs *regs, unsigned int pc, unsigned long usp)
{
 usp -= 8;

 regs->pc = pc;
 regs->sp = usp;
 regs->tsr |= 0x40;
 current->thread.usp = usp;
}
