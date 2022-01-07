
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;





 long EINVAL ;
 int flash_mutex ;
 int gbWriteBase64Enable ;
 int gbWriteEnable ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long flash_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
 mutex_lock(&flash_mutex);
 switch (cmd) {
 case 129:
  gbWriteBase64Enable = 0;
  gbWriteEnable = 0;
  break;

 case 128:
  gbWriteEnable = 1;
  break;

 case 130:
  gbWriteBase64Enable = 1;
  break;

 default:
  gbWriteBase64Enable = 0;
  gbWriteEnable = 0;
  mutex_unlock(&flash_mutex);
  return -EINVAL;
 }
 mutex_unlock(&flash_mutex);
 return 0;
}
