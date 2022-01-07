
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; int adapter; } ;
struct TYPE_2__ {struct i2c_client* client; } ;


 int EBUSY ;
 int ENODEV ;
 int I2C_FUNC_I2C ;
 int dev_err (struct device*,char*) ;
 int i2c_check_functionality (int ,int ) ;
 TYPE_1__ tpm_dev ;
 int tpm_tis_i2c_init (struct device*) ;

__attribute__((used)) static int tpm_tis_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 int rc;
 struct device *dev = &(client->dev);

 if (tpm_dev.client != ((void*)0)) {
  dev_err(dev, "This driver only supports one client at a time\n");
  return -EBUSY;
 }

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(dev, "no algorithms associated to the i2c bus\n");
  return -ENODEV;
 }

 tpm_dev.client = client;
 rc = tpm_tis_i2c_init(&client->dev);
 if (rc != 0) {
  tpm_dev.client = ((void*)0);
  rc = -ENODEV;
 }
 return rc;
}
