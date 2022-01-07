
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int opal_handle_message () ;

__attribute__((used)) static irqreturn_t opal_message_notify(int irq, void *data)
{
 opal_handle_message();
 return IRQ_HANDLED;
}
