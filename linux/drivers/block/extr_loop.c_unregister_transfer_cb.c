
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_func_table {int dummy; } ;
struct loop_device {struct loop_func_table* lo_encryption; } ;


 int loop_ctl_mutex ;
 int loop_release_xfer (struct loop_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int unregister_transfer_cb(int id, void *ptr, void *data)
{
 struct loop_device *lo = ptr;
 struct loop_func_table *xfer = data;

 mutex_lock(&loop_ctl_mutex);
 if (lo->lo_encryption == xfer)
  loop_release_xfer(lo);
 mutex_unlock(&loop_ctl_mutex);
 return 0;
}
