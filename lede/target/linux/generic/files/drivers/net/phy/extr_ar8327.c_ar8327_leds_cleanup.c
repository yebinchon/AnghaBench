
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_led {int dummy; } ;
struct ar8327_data {unsigned int num_leds; struct ar8327_led** leds; } ;


 int CONFIG_AR8216_PHY_LEDS ;
 int IS_ENABLED (int ) ;
 int ar8327_led_destroy (struct ar8327_led*) ;
 int kfree (struct ar8327_led**) ;

__attribute__((used)) static void
ar8327_leds_cleanup(struct ar8xxx_priv *priv)
{
 struct ar8327_data *data = priv->chip_data;
 unsigned i;

 if (!IS_ENABLED(CONFIG_AR8216_PHY_LEDS))
  return;

 for (i = 0; i < data->num_leds; i++) {
  struct ar8327_led *aled;

  aled = data->leds[i];
  ar8327_led_destroy(aled);
 }

 kfree(data->leds);
}
