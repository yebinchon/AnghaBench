
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPB (int ) ;
 int S3C2410_GPB0_TOUT0 ;
 int gpio_direction_output (int ,int) ;
 int ndelay (int) ;
 int s3c_gpio_cfgpin (int ,int ) ;

__attribute__((used)) static void rx1950_bl_power(int enable)
{
 static int enabled;
 if (enabled == enable)
  return;
 if (!enable) {
   gpio_direction_output(S3C2410_GPB(0), 0);
 } else {

   gpio_direction_output(S3C2410_GPB(0), 1);




   ndelay(48000);
   s3c_gpio_cfgpin(S3C2410_GPB(0), S3C2410_GPB0_TOUT0);
 }
 enabled = enable;
}
