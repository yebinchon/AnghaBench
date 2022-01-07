
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAS100D_PO_GPIO ;
 int gpio_direction_output (int ,int) ;

__attribute__((used)) static void nas100d_power_off(void)
{



 gpio_direction_output(NAS100D_PO_GPIO, 1);
}
