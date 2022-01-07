
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu {int reg_ctrl; int client; } ;


 int HZ ;
 int MCU_CTRL_BTN ;
 int MCU_REG_CTRL ;
 int TASK_INTERRUPTIBLE ;
 int ctrl_alt_del () ;
 struct mcu* glob_mcu ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int kthread_should_stop () ;
 int pr_err (char*) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;

__attribute__((used)) static int shutdown_thread_fn(void *data)
{
 int ret;
 struct mcu *mcu = glob_mcu;

 while (!kthread_should_stop()) {
  ret = i2c_smbus_read_byte_data(mcu->client, MCU_REG_CTRL);
  if (ret < 0)
   pr_err("MCU status reg read failed.\n");
  mcu->reg_ctrl = ret;


  if (mcu->reg_ctrl & MCU_CTRL_BTN) {
   i2c_smbus_write_byte_data(mcu->client, MCU_REG_CTRL,
        mcu->reg_ctrl & ~MCU_CTRL_BTN);

   ctrl_alt_del();
  }

  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(HZ);
 }

 return 0;
}
