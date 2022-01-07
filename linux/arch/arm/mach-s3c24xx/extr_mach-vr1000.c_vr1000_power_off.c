
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPB (int) ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void vr1000_power_off(void)
{
 gpio_direction_output(S3C2410_GPB(9), 1);
}
