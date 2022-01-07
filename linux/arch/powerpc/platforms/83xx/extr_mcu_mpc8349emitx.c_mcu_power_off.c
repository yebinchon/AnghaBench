
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu {int reg_ctrl; int lock; int client; } ;


 int MCU_CTRL_POFF ;
 int MCU_REG_CTRL ;
 struct mcu* glob_mcu ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;

__attribute__((used)) static void mcu_power_off(void)
{
 struct mcu *mcu = glob_mcu;

 pr_info("Sending power-off request to the MCU...\n");
 mutex_lock(&mcu->lock);
 i2c_smbus_write_byte_data(mcu->client, MCU_REG_CTRL,
      mcu->reg_ctrl | MCU_CTRL_POFF);
 mutex_unlock(&mcu->lock);
}
