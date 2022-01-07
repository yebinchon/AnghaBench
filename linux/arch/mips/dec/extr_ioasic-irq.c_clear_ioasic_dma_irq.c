
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;


 int IO_REG_SIR ;
 int fast_iob () ;
 int ioasic_irq_base ;
 int ioasic_write (int ,int) ;

__attribute__((used)) static void clear_ioasic_dma_irq(struct irq_data *d)
{
 u32 sir;

 sir = ~(1 << (d->irq - ioasic_irq_base));
 ioasic_write(IO_REG_SIR, sir);
 fast_iob();
}
