
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long cp0_epc; } ;


 unsigned long PAGE_SIZE ;
 scalar_t__ dsemul_page () ;

__attribute__((used)) static bool within_emuframe(struct pt_regs *regs)
{
 unsigned long base = (unsigned long)dsemul_page();

 if (regs->cp0_epc < base)
  return 0;
 if (regs->cp0_epc >= (base + PAGE_SIZE))
  return 0;

 return 1;
}
