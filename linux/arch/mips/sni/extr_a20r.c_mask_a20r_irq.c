
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int SNI_A20R_IRQ_BASE ;
 int clear_c0_status (int) ;
 int irq_disable_hazard () ;

__attribute__((used)) static inline void mask_a20r_irq(struct irq_data *d)
{
 clear_c0_status(0x100 << (d->irq - SNI_A20R_IRQ_BASE));
 irq_disable_hazard();
}
