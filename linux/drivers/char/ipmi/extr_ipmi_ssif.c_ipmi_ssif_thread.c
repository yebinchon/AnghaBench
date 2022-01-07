
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {scalar_t__ i2c_read_write; int * i2c_data; int (* done_handler ) (struct ssif_info*,int,int *,int) ;int i2c_command; int client; int wake_thread; scalar_t__ stopping; } ;


 int ERESTARTSYS ;
 scalar_t__ I2C_SMBUS_WRITE ;
 int i2c_smbus_read_block_data (int ,int ,int *) ;
 int i2c_smbus_write_block_data (int ,int ,int ,int *) ;
 int init_completion (int *) ;
 int kthread_should_stop () ;
 int stub1 (struct ssif_info*,int,int *,int) ;
 int stub2 (struct ssif_info*,int,int *,int) ;
 int stub3 (struct ssif_info*,int,int *,int) ;
 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int ipmi_ssif_thread(void *data)
{
 struct ssif_info *ssif_info = data;

 while (!kthread_should_stop()) {
  int result;


  result = wait_for_completion_interruptible(
      &ssif_info->wake_thread);
  if (ssif_info->stopping)
   break;
  if (result == -ERESTARTSYS)
   continue;
  init_completion(&ssif_info->wake_thread);

  if (ssif_info->i2c_read_write == I2C_SMBUS_WRITE) {
   result = i2c_smbus_write_block_data(
    ssif_info->client, ssif_info->i2c_command,
    ssif_info->i2c_data[0],
    ssif_info->i2c_data + 1);
   ssif_info->done_handler(ssif_info, result, ((void*)0), 0);
  } else {
   result = i2c_smbus_read_block_data(
    ssif_info->client, ssif_info->i2c_command,
    ssif_info->i2c_data);
   if (result < 0)
    ssif_info->done_handler(ssif_info, result,
       ((void*)0), 0);
   else
    ssif_info->done_handler(ssif_info, 0,
       ssif_info->i2c_data,
       result);
  }
 }

 return 0;
}
