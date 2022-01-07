
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPF (int) ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int h1940_is_ac_online(void)
{
 return !gpio_get_value(S3C2410_GPF(2));
}
