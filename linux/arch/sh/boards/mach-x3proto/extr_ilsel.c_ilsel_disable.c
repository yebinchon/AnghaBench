
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int __raw_readw (unsigned long) ;
 int __raw_writew (unsigned int,unsigned long) ;
 int clear_bit (unsigned int,int *) ;
 int ilsel_level_map ;
 unsigned long mk_ilsel_addr (unsigned int) ;
 int mk_ilsel_shift (unsigned int) ;
 int pr_notice (char*,unsigned int) ;

void ilsel_disable(unsigned int irq)
{
 unsigned long addr;
 unsigned int tmp;

 pr_notice("disabling ILSEL set %d\n", irq);

 addr = mk_ilsel_addr(irq);

 tmp = __raw_readw(addr);
 tmp &= ~(0xf << mk_ilsel_shift(irq));
 __raw_writew(tmp, addr);

 clear_bit(irq, &ilsel_level_map);
}
