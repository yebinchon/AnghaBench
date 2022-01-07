
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct irq_data {int irq; } ;





 int XLPII_USB3_INT_REG ;
 int nlm_write_usb_reg (int ,int ,int) ;
 int nlm_xlpii_get_usb_regbase (int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static void xlp2xx_usb_ack(struct irq_data *data)
{
 u64 port_addr;

 switch (data->irq) {
 case 130:
  port_addr = nlm_xlpii_get_usb_regbase(0, 1);
  break;
 case 129:
  port_addr = nlm_xlpii_get_usb_regbase(0, 2);
  break;
 case 128:
  port_addr = nlm_xlpii_get_usb_regbase(0, 3);
  break;
 default:
  pr_err("No matching USB irq!\n");
  return;
 }
 nlm_write_usb_reg(port_addr, XLPII_USB3_INT_REG, 0xffffffff);
}
