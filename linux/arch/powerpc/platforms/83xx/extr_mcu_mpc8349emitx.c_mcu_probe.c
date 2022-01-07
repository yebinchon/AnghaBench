
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu {int reg_ctrl; struct i2c_client* client; int lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCU_REG_CTRL ;
 int dev_attr_status ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 scalar_t__ device_create_file (int *,int *) ;
 struct mcu* glob_mcu ;
 int i2c_set_clientdata (struct i2c_client*,struct mcu*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int kfree (struct mcu*) ;
 int kthread_run (int ,int *,char*) ;
 struct mcu* kzalloc (int,int ) ;
 int mcu_gpiochip_add (struct mcu*) ;
 scalar_t__ mcu_power_off ;
 int mutex_init (int *) ;
 scalar_t__ pm_power_off ;
 int shutdown_thread ;
 int shutdown_thread_fn ;

__attribute__((used)) static int mcu_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct mcu *mcu;
 int ret;

 mcu = kzalloc(sizeof(*mcu), GFP_KERNEL);
 if (!mcu)
  return -ENOMEM;

 mutex_init(&mcu->lock);
 mcu->client = client;
 i2c_set_clientdata(client, mcu);

 ret = i2c_smbus_read_byte_data(mcu->client, MCU_REG_CTRL);
 if (ret < 0)
  goto err;
 mcu->reg_ctrl = ret;

 ret = mcu_gpiochip_add(mcu);
 if (ret)
  goto err;


 if (!pm_power_off) {
  glob_mcu = mcu;
  pm_power_off = mcu_power_off;
  dev_info(&client->dev, "will provide power-off service\n");
 }

 if (device_create_file(&client->dev, &dev_attr_status))
  dev_err(&client->dev,
   "couldn't create device file for status\n");

 shutdown_thread = kthread_run(shutdown_thread_fn, ((void*)0),
          "mcu-i2c-shdn");

 return 0;
err:
 kfree(mcu);
 return ret;
}
