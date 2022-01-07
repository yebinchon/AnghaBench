
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long pp_do_ioctl (struct file*,unsigned int,unsigned long) ;
 int pp_do_mutex ;

__attribute__((used)) static long pp_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;

 mutex_lock(&pp_do_mutex);
 ret = pp_do_ioctl(file, cmd, arg);
 mutex_unlock(&pp_do_mutex);
 return ret;
}
