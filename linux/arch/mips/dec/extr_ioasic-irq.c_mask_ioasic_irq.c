
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int irq; } ;


 int IO_REG_SIMR ;
 int ioasic_irq_base ;
 int ioasic_read (int ) ;
 int ioasic_write (int ,int) ;

__attribute__((used)) static void mask_ioasic_irq(struct irq_data *d)
{
 u32 simr;

 simr = ioasic_read(IO_REG_SIMR);
 simr &= ~(1 << (d->irq - ioasic_irq_base));
 ioasic_write(IO_REG_SIMR, simr);
}
