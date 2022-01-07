
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* gprs; } ;


 unsigned int NUM_GPRS ;

unsigned long regs_get_register(struct pt_regs *regs, unsigned int offset)
{
 if (offset >= NUM_GPRS)
  return 0;
 return regs->gprs[offset];
}
