
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_flow_handler_t ;


 int IRQ_LEVEL ;
 int __irq_set_handler (unsigned int,int ,int ,char*) ;
 int handle_edge_irq ;
 int handle_fasteoi_irq ;
 int irq_clear_status_flags (unsigned int,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static void mp_register_handler(unsigned int irq, unsigned long trigger)
{
 irq_flow_handler_t hdl;
 bool fasteoi;

 if (trigger) {
  irq_set_status_flags(irq, IRQ_LEVEL);
  fasteoi = 1;
 } else {
  irq_clear_status_flags(irq, IRQ_LEVEL);
  fasteoi = 0;
 }

 hdl = fasteoi ? handle_fasteoi_irq : handle_edge_irq;
 __irq_set_handler(irq, hdl, 0, fasteoi ? "fasteoi" : "edge");
}
