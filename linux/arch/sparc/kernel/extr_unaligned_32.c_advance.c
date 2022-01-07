
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int pc; int npc; } ;



__attribute__((used)) static inline void advance(struct pt_regs *regs)
{
 regs->pc = regs->npc;
 regs->npc += 4;
}
