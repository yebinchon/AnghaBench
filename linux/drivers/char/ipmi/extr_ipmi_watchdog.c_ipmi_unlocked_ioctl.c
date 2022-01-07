
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int ipmi_ioctl (struct file*,unsigned int,unsigned long) ;
 int ipmi_watchdog_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long ipmi_unlocked_ioctl(struct file *file,
    unsigned int cmd,
    unsigned long arg)
{
 int ret;

 mutex_lock(&ipmi_watchdog_mutex);
 ret = ipmi_ioctl(file, cmd, arg);
 mutex_unlock(&ipmi_watchdog_mutex);

 return ret;
}
