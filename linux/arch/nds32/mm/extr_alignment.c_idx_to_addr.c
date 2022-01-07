
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* uregs; unsigned long fp; unsigned long sp; } ;



__attribute__((used)) static inline unsigned long *idx_to_addr(struct pt_regs *regs, int idx)
{

 if (idx >= 0 && idx <= 25)
  return &regs->uregs[0] + idx;
 else if (idx >= 28 && idx <= 30)
  return &regs->fp + (idx - 28);
 else if (idx == 31)
  return &regs->sp;
 else
  return ((void*)0);
}
