
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JMR3927_IOC_INTS2_ADDR ;
 int JMR3927_IRQ_IOC ;
 int JMR3927_NR_IRQ_IOC ;
 unsigned char jmr3927_ioc_reg_in (int ) ;

__attribute__((used)) static int jmr3927_ioc_irqroute(void)
{
 unsigned char istat = jmr3927_ioc_reg_in(JMR3927_IOC_INTS2_ADDR);
 int i;

 for (i = 0; i < JMR3927_NR_IRQ_IOC; i++) {
  if (istat & (1 << i))
   return JMR3927_IRQ_IOC + i;
 }
 return -1;
}
