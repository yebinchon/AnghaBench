
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u32 ;
struct timer_list {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* ops; int lock; } ;
struct ata_link {int pmp; struct ata_port* ap; } ;
struct ahci_em_priv {unsigned long led_state; scalar_t__ saved_activity; scalar_t__ activity; scalar_t__ blink_policy; int timer; struct ata_link* link; } ;
struct TYPE_2__ {int (* transmit_led_message ) (struct ata_port*,unsigned long,int) ;} ;


 scalar_t__ BLINK_OFF ;
 unsigned long EM_MSG_LED_VALUE ;
 unsigned long EM_MSG_LED_VALUE_ACTIVITY ;
 unsigned long EM_MSG_LED_VALUE_ON ;
 struct ahci_em_priv* emp ;
 struct ahci_em_priv* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ata_port*,unsigned long,int) ;
 int timer ;

__attribute__((used)) static void ahci_sw_activity_blink(struct timer_list *t)
{
 struct ahci_em_priv *emp = from_timer(emp, t, timer);
 struct ata_link *link = emp->link;
 struct ata_port *ap = link->ap;

 unsigned long led_message = emp->led_state;
 u32 activity_led_state;
 unsigned long flags;

 led_message &= EM_MSG_LED_VALUE;
 led_message |= ap->port_no | (link->pmp << 8);





 spin_lock_irqsave(ap->lock, flags);
 if (emp->saved_activity != emp->activity) {
  emp->saved_activity = emp->activity;

  activity_led_state = led_message & EM_MSG_LED_VALUE_ON;

  if (activity_led_state)
   activity_led_state = 0;
  else
   activity_led_state = 1;


  led_message &= ~EM_MSG_LED_VALUE_ACTIVITY;


  led_message |= (activity_led_state << 16);
  mod_timer(&emp->timer, jiffies + msecs_to_jiffies(100));
 } else {

  led_message &= ~EM_MSG_LED_VALUE_ACTIVITY;
  if (emp->blink_policy == BLINK_OFF)
   led_message |= (1 << 16);
 }
 spin_unlock_irqrestore(ap->lock, flags);
 ap->ops->transmit_led_message(ap, led_message, 4);
}
