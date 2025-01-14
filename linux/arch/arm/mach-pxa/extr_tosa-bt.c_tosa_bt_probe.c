
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tosa_bt_data {int gpio_reset; int gpio_pwr; } ;
struct rfkill {int dummy; } ;
struct TYPE_2__ {struct tosa_bt_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENOMEM ;
 int RFKILL_TYPE_BLUETOOTH ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct rfkill*) ;
 struct rfkill* rfkill_alloc (char*,TYPE_1__*,int ,int *,struct tosa_bt_data*) ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_register (struct rfkill*) ;
 int tosa_bt_off (struct tosa_bt_data*) ;
 int tosa_bt_rfkill_ops ;

__attribute__((used)) static int tosa_bt_probe(struct platform_device *dev)
{
 int rc;
 struct rfkill *rfk;

 struct tosa_bt_data *data = dev->dev.platform_data;

 rc = gpio_request(data->gpio_reset, "Bluetooth reset");
 if (rc)
  goto err_reset;
 rc = gpio_direction_output(data->gpio_reset, 0);
 if (rc)
  goto err_reset_dir;
 rc = gpio_request(data->gpio_pwr, "Bluetooth power");
 if (rc)
  goto err_pwr;
 rc = gpio_direction_output(data->gpio_pwr, 0);
 if (rc)
  goto err_pwr_dir;

 rfk = rfkill_alloc("tosa-bt", &dev->dev, RFKILL_TYPE_BLUETOOTH,
      &tosa_bt_rfkill_ops, data);
 if (!rfk) {
  rc = -ENOMEM;
  goto err_rfk_alloc;
 }

 rc = rfkill_register(rfk);
 if (rc)
  goto err_rfkill;

 platform_set_drvdata(dev, rfk);

 return 0;

err_rfkill:
 rfkill_destroy(rfk);
err_rfk_alloc:
 tosa_bt_off(data);
err_pwr_dir:
 gpio_free(data->gpio_pwr);
err_pwr:
err_reset_dir:
 gpio_free(data->gpio_reset);
err_reset:
 return rc;
}
