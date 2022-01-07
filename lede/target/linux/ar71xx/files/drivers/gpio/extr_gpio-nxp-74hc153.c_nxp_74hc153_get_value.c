
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nxp_74hc153_platform_data {unsigned int gpio_pin_2y; unsigned int gpio_pin_1y; int gpio_pin_s1; int gpio_pin_s0; } ;
struct nxp_74hc153_chip {int lock; TYPE_1__* parent; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct nxp_74hc153_platform_data* platform_data; } ;


 unsigned int NXP_74HC153_BANK_MASK ;
 unsigned int NXP_74HC153_S0_MASK ;
 unsigned int NXP_74HC153_S1_MASK ;
 int gpio_get_value (unsigned int) ;
 int gpio_set_value (int ,unsigned int) ;
 struct nxp_74hc153_chip* gpio_to_nxp (struct gpio_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int nxp_74hc153_get_value(struct gpio_chip *gc, unsigned offset)
{
 struct nxp_74hc153_chip *nxp;
 struct nxp_74hc153_platform_data *pdata;
 unsigned s0;
 unsigned s1;
 unsigned pin;
 int ret;

 nxp = gpio_to_nxp(gc);
 pdata = nxp->parent->platform_data;

 s0 = !!(offset & NXP_74HC153_S0_MASK);
 s1 = !!(offset & NXP_74HC153_S1_MASK);
 pin = (offset & NXP_74HC153_BANK_MASK) ? pdata->gpio_pin_2y
            : pdata->gpio_pin_1y;

 mutex_lock(&nxp->lock);
 gpio_set_value(pdata->gpio_pin_s0, s0);
 gpio_set_value(pdata->gpio_pin_s1, s1);
 ret = gpio_get_value(pin);
 mutex_unlock(&nxp->lock);

 return ret;
}
