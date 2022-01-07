
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {int lo_number; TYPE_1__* lo_disk; int lo_refcnt; int lo_state; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int * private_data; } ;


 int EBUSY ;
 int EEXIST ;
 int ENOSYS ;



 int Lo_unbound ;
 int atomic_read (int *) ;
 int idr_remove (int *,int ) ;
 int loop_add (struct loop_device**,int) ;
 int loop_ctl_mutex ;
 int loop_index_idr ;
 int loop_lookup (struct loop_device**,int) ;
 int loop_remove (struct loop_device*) ;
 int mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long loop_control_ioctl(struct file *file, unsigned int cmd,
          unsigned long parm)
{
 struct loop_device *lo;
 int ret;

 ret = mutex_lock_killable(&loop_ctl_mutex);
 if (ret)
  return ret;

 ret = -ENOSYS;
 switch (cmd) {
 case 130:
  ret = loop_lookup(&lo, parm);
  if (ret >= 0) {
   ret = -EEXIST;
   break;
  }
  ret = loop_add(&lo, parm);
  break;
 case 128:
  ret = loop_lookup(&lo, parm);
  if (ret < 0)
   break;
  if (lo->lo_state != Lo_unbound) {
   ret = -EBUSY;
   break;
  }
  if (atomic_read(&lo->lo_refcnt) > 0) {
   ret = -EBUSY;
   break;
  }
  lo->lo_disk->private_data = ((void*)0);
  idr_remove(&loop_index_idr, lo->lo_number);
  loop_remove(lo);
  break;
 case 129:
  ret = loop_lookup(&lo, -1);
  if (ret >= 0)
   break;
  ret = loop_add(&lo, -1);
 }
 mutex_unlock(&loop_ctl_mutex);

 return ret;
}
