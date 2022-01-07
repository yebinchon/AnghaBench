
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPJ (int) ;
 int gpio_free (int ) ;

__attribute__((used)) static void rx1950_bat_exit(void)
{
 gpio_free(S3C2410_GPJ(2));
 gpio_free(S3C2410_GPJ(3));
}
