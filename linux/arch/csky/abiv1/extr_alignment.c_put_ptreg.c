
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_regs {int lr; int a0; } ;



__attribute__((used)) static inline void put_ptreg(struct pt_regs *regs, uint32_t rx, uint32_t val)
{
 if (rx == 15)
  regs->lr = val;
 else
  *((uint32_t *)&(regs->a0) - 2 + rx) = val;
}
