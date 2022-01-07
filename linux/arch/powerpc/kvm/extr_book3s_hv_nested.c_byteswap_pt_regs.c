
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long swab64 (unsigned long) ;

__attribute__((used)) static void byteswap_pt_regs(struct pt_regs *regs)
{
 unsigned long *addr = (unsigned long *) regs;

 for (; addr < ((unsigned long *) (regs + 1)); addr++)
  *addr = swab64(*addr);
}
