
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_led {int pattern; int led_num; scalar_t__ enable_hw_mode; } ;
struct ar8327_data {unsigned int num_leds; struct ar8327_led** leds; } ;


 int AR8327_LED_PATTERN_OFF ;
 int AR8327_LED_PATTERN_RULE ;
 int CONFIG_AR8216_PHY_LEDS ;
 int IS_ENABLED (int ) ;
 int ar8327_set_led_pattern (struct ar8xxx_priv*,int ,int ) ;

__attribute__((used)) static void
ar8327_leds_init(struct ar8xxx_priv *priv)
{
 struct ar8327_data *data = priv->chip_data;
 unsigned i;

 if (!IS_ENABLED(CONFIG_AR8216_PHY_LEDS))
  return;

 for (i = 0; i < data->num_leds; i++) {
  struct ar8327_led *aled;

  aled = data->leds[i];

  if (aled->enable_hw_mode)
   aled->pattern = AR8327_LED_PATTERN_RULE;
  else
   aled->pattern = AR8327_LED_PATTERN_OFF;

  ar8327_set_led_pattern(priv, aled->led_num, aled->pattern);
 }
}
