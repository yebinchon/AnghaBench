
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_LEVEL ;
 int handle_edge_irq ;
 int irq_clear_status_flags (int,int ) ;
 int irq_set_chip_and_handler_name (int,int *,int ,char*) ;
 int lapic_chip ;

__attribute__((used)) static void lapic_register_intr(int irq)
{
 irq_clear_status_flags(irq, IRQ_LEVEL);
 irq_set_chip_and_handler_name(irq, &lapic_chip, handle_edge_irq,
          "edge");
}
