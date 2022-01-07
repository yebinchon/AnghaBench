
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_GPK (int) ;
 int S3C64XX_GPL (int ) ;
 int S3C_GPIO_SFN (int) ;
 int s3c_gpio_cfgrange_nopull (int ,unsigned int,int ) ;

void samsung_keypad_cfg_gpio(unsigned int rows, unsigned int cols)
{

 s3c_gpio_cfgrange_nopull(S3C64XX_GPK(8), rows, S3C_GPIO_SFN(3));


 s3c_gpio_cfgrange_nopull(S3C64XX_GPL(0), cols, S3C_GPIO_SFN(3));
}
