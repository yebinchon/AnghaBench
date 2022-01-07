
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* iaoq; } ;



void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long ip)
{
 regs->iaoq[0] = ip;
 regs->iaoq[1] = ip + 4;
}
