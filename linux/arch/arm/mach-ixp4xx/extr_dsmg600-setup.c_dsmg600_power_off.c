
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSMG600_PO_GPIO ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void dsmg600_power_off(void)
{

 gpio_direction_output(DSMG600_PO_GPIO, 1);
}
