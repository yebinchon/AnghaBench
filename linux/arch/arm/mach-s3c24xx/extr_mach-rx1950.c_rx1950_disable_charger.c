
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPJ (int) ;
 int gpio_direction_output (int ,int ) ;

__attribute__((used)) static void rx1950_disable_charger(void)
{
 gpio_direction_output(S3C2410_GPJ(2), 0);
 gpio_direction_output(S3C2410_GPJ(3), 0);
}
