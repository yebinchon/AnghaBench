
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SD1_EN_GPIO ;
 int gpio_direction_output (int ,int) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static void mx27_3ds_sdhc1_enable_level_translator(void)
{

 gpio_request(SD1_EN_GPIO, "sd1_enable");
 gpio_direction_output(SD1_EN_GPIO, 1);
}
