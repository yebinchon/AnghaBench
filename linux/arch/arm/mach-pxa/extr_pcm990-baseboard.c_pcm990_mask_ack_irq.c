
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int PCM027_IRQ (int ) ;
 int PCM990_CTRL_INTMSKENA ;
 int pcm990_cpld_writeb (int,int ) ;
 int pcm990_irq_enabled ;

__attribute__((used)) static void pcm990_mask_ack_irq(struct irq_data *d)
{
 int pcm990_irq = (d->irq - PCM027_IRQ(0));

 pcm990_irq_enabled &= ~(1 << pcm990_irq);

 pcm990_cpld_writeb(pcm990_irq_enabled, PCM990_CTRL_INTMSKENA);
}
