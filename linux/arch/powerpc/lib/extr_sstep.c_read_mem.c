
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int EFAULT ;
 int address_ok (struct pt_regs*,unsigned long,int) ;
 int read_mem_aligned (unsigned long*,unsigned long,int,struct pt_regs*) ;
 int read_mem_unaligned (unsigned long*,unsigned long,int,struct pt_regs*) ;

__attribute__((used)) static int read_mem(unsigned long *dest, unsigned long ea, int nb,
         struct pt_regs *regs)
{
 if (!address_ok(regs, ea, nb))
  return -EFAULT;
 if ((ea & (nb - 1)) == 0)
  return read_mem_aligned(dest, ea, nb, regs);
 return read_mem_unaligned(dest, ea, nb, regs);
}
