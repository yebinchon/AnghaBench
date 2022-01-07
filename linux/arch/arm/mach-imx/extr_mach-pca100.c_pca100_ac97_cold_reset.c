
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int GPIO_GPIO ;
 int GPIO_OUT ;
 int GPIO_PORTC ;
 int PC20_PF_SSI1_FS ;
 int PC22_PF_SSI1_TXD ;
 int gpio_set_value (int,int) ;
 int msleep (int) ;
 int mxc_gpio_mode (int) ;
 int udelay (int) ;

__attribute__((used)) static void pca100_ac97_cold_reset(struct snd_ac97 *ac97)
{
 mxc_gpio_mode(GPIO_PORTC | 20 | GPIO_GPIO | GPIO_OUT);
 gpio_set_value(GPIO_PORTC + 20, 0);
 mxc_gpio_mode(GPIO_PORTC | 22 | GPIO_GPIO | GPIO_OUT);
 gpio_set_value(GPIO_PORTC + 22, 0);
 mxc_gpio_mode(GPIO_PORTC | 28 | GPIO_GPIO | GPIO_OUT);
 gpio_set_value(GPIO_PORTC + 28, 0);
 udelay(10);
 gpio_set_value(GPIO_PORTC + 28, 1);
 mxc_gpio_mode(PC20_PF_SSI1_FS);
 mxc_gpio_mode(PC22_PF_SSI1_TXD);
 msleep(2);
}
