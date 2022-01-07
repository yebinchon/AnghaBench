
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu {int reg_ctrl; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int MCU_REG_CTRL ;
 struct mcu* glob_mcu ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_status(struct device *d,
      struct device_attribute *attr, char *buf)
{
 int ret;
 struct mcu *mcu = glob_mcu;

 ret = i2c_smbus_read_byte_data(mcu->client, MCU_REG_CTRL);
 if (ret < 0)
  return -ENODEV;
 mcu->reg_ctrl = ret;

 return sprintf(buf, "%02x\n", ret);
}
