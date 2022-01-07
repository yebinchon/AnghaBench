
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_data {int open; scalar_t__ state; int type; int log_buffer; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 struct salinfo_data* PDE_DATA (struct inode*) ;
 scalar_t__ STATE_NO_DATA ;
 int capable (int ) ;
 int data_lock ;
 int ia64_sal_get_state_info_size (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmalloc (int ) ;

__attribute__((used)) static int
salinfo_log_open(struct inode *inode, struct file *file)
{
 struct salinfo_data *data = PDE_DATA(inode);

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 spin_lock(&data_lock);
 if (data->open) {
  spin_unlock(&data_lock);
  return -EBUSY;
 }
 data->open = 1;
 spin_unlock(&data_lock);

 if (data->state == STATE_NO_DATA &&
     !(data->log_buffer = vmalloc(ia64_sal_get_state_info_size(data->type)))) {
  data->open = 0;
  return -ENOMEM;
 }

 return 0;
}
