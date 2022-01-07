
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ds1620_ioctl (struct file*,unsigned int,unsigned long) ;
 int ds1620_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
ds1620_unlocked_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&ds1620_mutex);
 ret = ds1620_ioctl(file, cmd, arg);
 mutex_unlock(&ds1620_mutex);

 return ret;
}
