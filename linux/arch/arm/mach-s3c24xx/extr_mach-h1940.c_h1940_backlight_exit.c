
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int H1940_LATCH_MAX1698_nSHUTDOWN ;
 int S3C2410_GPB (int ) ;
 int gpio_direction_output (int ,int) ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static void h1940_backlight_exit(struct device *dev)
{
 gpio_direction_output(S3C2410_GPB(0), 1);
 gpio_set_value(H1940_LATCH_MAX1698_nSHUTDOWN, 0);
}
