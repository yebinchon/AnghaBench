
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct irq_data {int irq; } ;


 int NLM_IRQS_PER_NODE ;



 int XLPII_USB3_INT_REG ;
 int nlm_write_usb_reg (int ,int ,int) ;
 int nlm_xlpii_get_usb_regbase (int,int) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static void xlp9xx_usb_ack(struct irq_data *data)
{
 u64 port_addr;
 int node, irq;


 irq = data->irq % NLM_IRQS_PER_NODE;
 node = data->irq / NLM_IRQS_PER_NODE;

 switch (irq) {
 case 130:
  port_addr = nlm_xlpii_get_usb_regbase(node, 1);
  break;
 case 129:
  port_addr = nlm_xlpii_get_usb_regbase(node, 2);
  break;
 case 128:
  port_addr = nlm_xlpii_get_usb_regbase(node, 3);
  break;
 default:
  pr_err("No matching USB irq %d node  %d!\n", irq, node);
  return;
 }
 nlm_write_usb_reg(port_addr, XLPII_USB3_INT_REG, 0xffffffff);
}
