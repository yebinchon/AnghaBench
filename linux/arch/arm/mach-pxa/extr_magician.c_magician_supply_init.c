
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_CABLE_INSERTED ;
 int EGPIO_MAGICIAN_CABLE_TYPE ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int magician_supply_init(struct device *dev)
{
 int ret = -1;

 ret = gpio_request(EGPIO_MAGICIAN_CABLE_TYPE, "Cable is AC charger");
 if (ret) {
  pr_err("Cannot request AC/USB charger GPIO (%i)\n", ret);
  goto err_ac;
 }

 ret = gpio_request(EGPIO_MAGICIAN_CABLE_INSERTED, "Cable inserted");
 if (ret) {
  pr_err("Cannot request cable detection GPIO (%i)\n", ret);
  goto err_usb;
 }

 return 0;

err_usb:
 gpio_free(EGPIO_MAGICIAN_CABLE_TYPE);
err_ac:
 return ret;
}
