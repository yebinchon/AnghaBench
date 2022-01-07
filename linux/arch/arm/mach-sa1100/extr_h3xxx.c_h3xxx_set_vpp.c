
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H3XXX_EGPIO_VPP_ON ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void h3xxx_set_vpp(int vpp)
{
 gpio_set_value(H3XXX_EGPIO_VPP_ON, vpp);
}
