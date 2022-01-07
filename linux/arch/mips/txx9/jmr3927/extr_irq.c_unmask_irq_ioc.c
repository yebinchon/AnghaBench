
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int JMR3927_IOC_INTM_ADDR ;
 int JMR3927_IOC_REV_ADDR ;
 unsigned int JMR3927_IRQ_IOC ;
 unsigned char jmr3927_ioc_reg_in (int ) ;
 int jmr3927_ioc_reg_out (unsigned char,int ) ;

__attribute__((used)) static void unmask_irq_ioc(struct irq_data *d)
{

 unsigned int irq_nr = d->irq - JMR3927_IRQ_IOC;
 unsigned char imask = jmr3927_ioc_reg_in(JMR3927_IOC_INTM_ADDR);
 unsigned int bit = 1 << irq_nr;
 jmr3927_ioc_reg_out(imask | bit, JMR3927_IOC_INTM_ADDR);

 (void)jmr3927_ioc_reg_in(JMR3927_IOC_REV_ADDR);
}
