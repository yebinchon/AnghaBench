
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C_CAMIF_NUM_GPIOS ;
 int camif_get_gpios (int*,int*) ;
 int gpio_free (int) ;

void s3c_camif_gpio_put(void)
{
 int i, gpio_start, gpio_reset;

 camif_get_gpios(&gpio_start, &gpio_reset);

 for (i = 0; i < S3C_CAMIF_NUM_GPIOS; i++) {
  int gpio = gpio_start + i;
  if (gpio != gpio_reset)
   gpio_free(gpio);
 }
}
