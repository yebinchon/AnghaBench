
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die_if_kernel (char*,struct pt_regs*) ;
 int printk (char*,unsigned int) ;

__attribute__((used)) static inline int decode_access_size(struct pt_regs *regs, unsigned int insn)
{
 unsigned int tmp;

 tmp = ((insn >> 19) & 0xf);
 if (tmp == 11 || tmp == 14)
  return 8;
 tmp &= 3;
 if (!tmp)
  return 4;
 else if (tmp == 3)
  return 16;
 else if (tmp == 2)
  return 2;
 else {
  printk("Impossible unaligned trap. insn=%08x\n", insn);
  die_if_kernel("Byte sized unaligned access?!?!", regs);







  return 0;
 }
}
