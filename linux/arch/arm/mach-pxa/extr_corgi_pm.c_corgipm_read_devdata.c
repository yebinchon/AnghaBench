
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machinfo; } ;
struct TYPE_3__ {int gpio_fatal; int gpio_batfull; int gpio_batlock; } ;


 int CORGI_GPIO_AC_IN ;
 int MAX1111_ACIN_VOLT ;
 int MAX1111_BATT_TEMP ;
 int MAX1111_BATT_VOLT ;







 unsigned long gpio_get_value (int ) ;
 TYPE_2__ sharpsl_pm ;
 unsigned long sharpsl_pm_pxa_read_max1111 (int ) ;

unsigned long corgipm_read_devdata(int type)
{
 switch(type) {
 case 131:
  return !gpio_get_value(CORGI_GPIO_AC_IN);
 case 128:
  return gpio_get_value(sharpsl_pm.machinfo->gpio_batlock);
 case 130:
  return gpio_get_value(sharpsl_pm.machinfo->gpio_batfull);
 case 129:
  return gpio_get_value(sharpsl_pm.machinfo->gpio_fatal);
 case 134:
  return sharpsl_pm_pxa_read_max1111(MAX1111_ACIN_VOLT);
 case 133:
  return sharpsl_pm_pxa_read_max1111(MAX1111_BATT_TEMP);
 case 132:
 default:
  return sharpsl_pm_pxa_read_max1111(MAX1111_BATT_VOLT);
 }
}
