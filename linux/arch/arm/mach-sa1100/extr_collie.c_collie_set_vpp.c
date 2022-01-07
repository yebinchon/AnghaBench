
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLLIE_GPIO_VPEN ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void collie_set_vpp(int vpp)
{
 gpio_set_value(COLLIE_GPIO_VPEN, vpp);
}
