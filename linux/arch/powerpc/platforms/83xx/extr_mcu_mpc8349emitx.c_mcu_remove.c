
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_attr_status ;
 int device_remove_file (int *,int *) ;
 struct mcu* glob_mcu ;
 struct mcu* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct mcu*) ;
 int kthread_stop (int ) ;
 int mcu_gpiochip_remove (struct mcu*) ;
 int * pm_power_off ;
 int shutdown_thread ;

__attribute__((used)) static int mcu_remove(struct i2c_client *client)
{
 struct mcu *mcu = i2c_get_clientdata(client);
 int ret;

 kthread_stop(shutdown_thread);

 device_remove_file(&client->dev, &dev_attr_status);

 if (glob_mcu == mcu) {
  pm_power_off = ((void*)0);
  glob_mcu = ((void*)0);
 }

 ret = mcu_gpiochip_remove(mcu);
 if (ret)
  return ret;
 kfree(mcu);
 return 0;
}
