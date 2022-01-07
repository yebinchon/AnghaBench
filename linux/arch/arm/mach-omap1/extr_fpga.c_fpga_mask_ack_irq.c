
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int fpga_ack_irq (struct irq_data*) ;
 int fpga_mask_irq (struct irq_data*) ;

__attribute__((used)) static void fpga_mask_ack_irq(struct irq_data *d)
{
 fpga_mask_irq(d);
 fpga_ack_irq(d);
}
