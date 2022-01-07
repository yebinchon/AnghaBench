
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPO_SOFT_OFF ;
 int gpio_set_value (int ,int ) ;

void machine_halt(void)
{
 gpio_set_value(GPO_SOFT_OFF, 0);
}
