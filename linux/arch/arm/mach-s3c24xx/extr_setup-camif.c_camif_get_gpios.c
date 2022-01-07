
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPJ (int) ;
 int S3C64XX_GPF (int) ;

__attribute__((used)) static void camif_get_gpios(int *gpio_start, int *gpio_reset)
{





 *gpio_start = S3C64XX_GPF(0);
 *gpio_reset = S3C64XX_GPF(3);

}
