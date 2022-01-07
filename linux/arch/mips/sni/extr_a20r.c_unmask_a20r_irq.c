
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int SNI_A20R_IRQ_BASE ;
 int irq_enable_hazard () ;
 int set_c0_status (int) ;

__attribute__((used)) static inline void unmask_a20r_irq(struct irq_data *d)
{
 set_c0_status(0x100 << (d->irq - SNI_A20R_IRQ_BASE));
 irq_enable_hazard();
}
