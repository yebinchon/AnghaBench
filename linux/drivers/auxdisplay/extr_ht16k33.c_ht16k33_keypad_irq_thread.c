
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ht16k33_keypad {scalar_t__ stopped; int debounce_ms; int wait; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ ht16k33_keypad_scan (struct ht16k33_keypad*) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_timeout (int ,scalar_t__,int ) ;

__attribute__((used)) static irqreturn_t ht16k33_keypad_irq_thread(int irq, void *dev)
{
 struct ht16k33_keypad *keypad = dev;

 do {
  wait_event_timeout(keypad->wait, keypad->stopped,
        msecs_to_jiffies(keypad->debounce_ms));
  if (keypad->stopped)
   break;
 } while (ht16k33_keypad_scan(keypad));

 return IRQ_HANDLED;
}
