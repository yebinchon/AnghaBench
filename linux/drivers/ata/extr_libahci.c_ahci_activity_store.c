
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_port {int port_no; TYPE_1__* ops; struct ahci_port_priv* private_data; } ;
struct ata_link {size_t pmp; int flags; struct ata_port* ap; } ;
struct ata_device {struct ata_link* link; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_em_priv {int led_state; int blink_policy; } ;
typedef int ssize_t ;
typedef enum sw_activity { ____Placeholder_sw_activity } sw_activity ;
struct TYPE_2__ {int (* transmit_led_message ) (struct ata_port*,int,int) ;} ;


 int ATA_LFLAG_SW_ACTIVITY ;
 int BLINK_OFF ;
 int EM_MSG_LED_VALUE_OFF ;
 int EM_MSG_LED_VALUE_ON ;
 int OFF ;
 int stub1 (struct ata_port*,int,int) ;
 int stub2 (struct ata_port*,int,int) ;

__attribute__((used)) static ssize_t ahci_activity_store(struct ata_device *dev, enum sw_activity val)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 struct ahci_port_priv *pp = ap->private_data;
 struct ahci_em_priv *emp = &pp->em_priv[link->pmp];
 u32 port_led_state = emp->led_state;


 if (val == OFF) {

  link->flags &= ~(ATA_LFLAG_SW_ACTIVITY);


  port_led_state &= EM_MSG_LED_VALUE_OFF;
  port_led_state |= (ap->port_no | (link->pmp << 8));
  ap->ops->transmit_led_message(ap, port_led_state, 4);
 } else {
  link->flags |= ATA_LFLAG_SW_ACTIVITY;
  if (val == BLINK_OFF) {

   port_led_state &= EM_MSG_LED_VALUE_OFF;
   port_led_state |= (ap->port_no | (link->pmp << 8));
   port_led_state |= EM_MSG_LED_VALUE_ON;
   ap->ops->transmit_led_message(ap, port_led_state, 4);
  }
 }
 emp->blink_policy = val;
 return 0;
}
