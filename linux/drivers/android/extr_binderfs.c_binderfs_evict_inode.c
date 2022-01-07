
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; struct binder_device* i_private; } ;
struct binderfs_info {int device_count; } ;
struct TYPE_3__ {struct binder_device* name; } ;
struct TYPE_4__ {int minor; } ;
struct binder_device {TYPE_1__ context; TYPE_2__ miscdev; } ;


 struct binderfs_info* BINDERFS_I (struct inode*) ;
 int S_ISCHR (int ) ;
 int binderfs_minors ;
 int binderfs_minors_mutex ;
 int clear_inode (struct inode*) ;
 int ida_free (int *,int ) ;
 int kfree (struct binder_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void binderfs_evict_inode(struct inode *inode)
{
 struct binder_device *device = inode->i_private;
 struct binderfs_info *info = BINDERFS_I(inode);

 clear_inode(inode);

 if (!S_ISCHR(inode->i_mode) || !device)
  return;

 mutex_lock(&binderfs_minors_mutex);
 --info->device_count;
 ida_free(&binderfs_minors, device->miscdev.minor);
 mutex_unlock(&binderfs_minors_mutex);

 kfree(device->context.name);
 kfree(device);
}
