
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long harddog_ioctl_unlocked (struct file*,unsigned int,unsigned long) ;
 int harddog_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long harddog_ioctl(struct file *file,
     unsigned int cmd, unsigned long arg)
{
 long ret;

 mutex_lock(&harddog_mutex);
 ret = harddog_ioctl_unlocked(file, cmd, arg);
 mutex_unlock(&harddog_mutex);

 return ret;
}
