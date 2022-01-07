
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OTG_PHY_RESET_GPIO ;
 int gpio_direction_output (int ,int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int otg_phy_init(void)
{
 gpio_request(OTG_PHY_RESET_GPIO, "usb-otg-reset");
 gpio_direction_output(OTG_PHY_RESET_GPIO, 0);
 mdelay(1);
 gpio_set_value(OTG_PHY_RESET_GPIO, 1);
 return 0;
}
