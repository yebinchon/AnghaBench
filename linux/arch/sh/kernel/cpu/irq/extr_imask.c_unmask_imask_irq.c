
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 scalar_t__ IMASK_PRIORITY ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int imask_mask ;
 scalar_t__ interrupt_priority ;
 int set_bit (unsigned int,int ) ;
 int set_interrupt_registers (scalar_t__) ;

__attribute__((used)) static void unmask_imask_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;

 set_bit(irq, imask_mask);
 interrupt_priority = IMASK_PRIORITY -
  find_first_zero_bit(imask_mask, IMASK_PRIORITY);
 set_interrupt_registers(interrupt_priority);
}
