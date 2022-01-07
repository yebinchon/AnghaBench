
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_keys_button_data {int last_state; scalar_t__ count; scalar_t__ threshold; TYPE_1__* b; } ;
struct TYPE_2__ {int type; } ;


 unsigned int EV_KEY ;
 unsigned int EV_SW ;
 int button_hotplug_event (struct gpio_keys_button_data*,unsigned int,int) ;
 int gpio_button_get_value (struct gpio_keys_button_data*) ;

__attribute__((used)) static void gpio_keys_polled_check_state(struct gpio_keys_button_data *bdata)
{
 int state = gpio_button_get_value(bdata);

 if (state != bdata->last_state) {
  unsigned int type = bdata->b->type ?: EV_KEY;

  if (bdata->count < bdata->threshold) {
   bdata->count++;
   return;
  }

  if ((bdata->last_state != -1) || (type == EV_SW))
   button_hotplug_event(bdata, type, state);

  bdata->last_state = state;
 }

 bdata->count = 0;
}
