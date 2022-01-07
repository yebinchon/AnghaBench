
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int (* ioctl ) (struct loop_device*,unsigned int,unsigned long) ;} ;


 int EINVAL ;



 int loop_ctl_mutex ;
 int loop_set_block_size (struct loop_device*,unsigned long) ;
 int loop_set_capacity (struct loop_device*) ;
 int loop_set_dio (struct loop_device*,unsigned long) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct loop_device*,unsigned int,unsigned long) ;

__attribute__((used)) static int lo_simple_ioctl(struct loop_device *lo, unsigned int cmd,
      unsigned long arg)
{
 int err;

 err = mutex_lock_killable(&loop_ctl_mutex);
 if (err)
  return err;
 switch (cmd) {
 case 129:
  err = loop_set_capacity(lo);
  break;
 case 128:
  err = loop_set_dio(lo, arg);
  break;
 case 130:
  err = loop_set_block_size(lo, arg);
  break;
 default:
  err = lo->ioctl ? lo->ioctl(lo, cmd, arg) : -EINVAL;
 }
 mutex_unlock(&loop_ctl_mutex);
 return err;
}
