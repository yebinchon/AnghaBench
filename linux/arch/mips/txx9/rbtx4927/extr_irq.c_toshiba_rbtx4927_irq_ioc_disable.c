
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int RBTX4927_IRQ_IOC ;
 int mmiowb () ;
 int rbtx4927_imask_addr ;
 unsigned char readb (int ) ;
 int writeb (unsigned char,int ) ;

__attribute__((used)) static void toshiba_rbtx4927_irq_ioc_disable(struct irq_data *d)
{
 unsigned char v;

 v = readb(rbtx4927_imask_addr);
 v &= ~(1 << (d->irq - RBTX4927_IRQ_IOC));
 writeb(v, rbtx4927_imask_addr);
 mmiowb();
}
