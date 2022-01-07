
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bh_priv {unsigned long seen; } ;
struct gpio_keys_button_data {TYPE_1__* b; struct bh_priv bh; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int code; } ;


 int BH_DBG (char*,unsigned int,int ,int) ;
 unsigned int EV_KEY ;
 unsigned int EV_SW ;
 unsigned long HZ ;
 int button_get_index (int ) ;
 int button_hotplug_create_event (int ,unsigned int,unsigned long,int) ;
 TYPE_2__* button_map ;
 unsigned long jiffies ;

__attribute__((used)) static void button_hotplug_event(struct gpio_keys_button_data *data,
      unsigned int type, int value)
{
 struct bh_priv *priv = &data->bh;
 unsigned long seen = jiffies;
 int btn;

 BH_DBG("event type=%u, code=%u, value=%d\n", type, data->b->code, value);

 if ((type != EV_KEY) && (type != EV_SW))
  return;

 btn = button_get_index(data->b->code);
 if (btn < 0)
  return;

 button_hotplug_create_event(button_map[btn].name, type,
   (seen - priv->seen) / HZ, value);
 priv->seen = seen;
}
