
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_keys_button_data {TYPE_1__* b; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EV_KEY ;
 int IRQ_HANDLED ;
 int button_hotplug_event (struct gpio_keys_button_data*,int ,int ) ;
 int gpio_button_get_value (struct gpio_keys_button_data*) ;

__attribute__((used)) static irqreturn_t button_handle_irq(int irq, void *_bdata)
{
 struct gpio_keys_button_data *bdata = (struct gpio_keys_button_data *) _bdata;

 button_hotplug_event(bdata, bdata->b->type ?: EV_KEY, gpio_button_get_value(bdata));

 return IRQ_HANDLED;
}
