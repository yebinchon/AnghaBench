
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int get_irq_regs () ;
 int in_nmi ;
 int pr_info (char*) ;
 int show_registers (int ) ;

irqreturn_t mac_nmi_handler(int irq, void *dev_id)
{
 if (in_nmi)
  return IRQ_HANDLED;
 in_nmi = 1;

 pr_info("Non-Maskable Interrupt\n");
 show_registers(get_irq_regs());

 in_nmi = 0;
 return IRQ_HANDLED;
}
