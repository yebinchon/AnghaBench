
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct binderfs_info* s_fs_info; struct dentry* s_root; } ;
struct inode {struct binder_device* i_private; int i_gid; int i_uid; int * i_fop; int i_ctime; int i_atime; int i_mtime; int i_ino; } ;
struct dentry {int dummy; } ;
struct binderfs_info {struct dentry* control_dentry; int root_gid; int root_uid; int * ipc_ns; } ;
struct TYPE_2__ {int minor; } ;
struct binder_device {TYPE_1__ miscdev; struct inode* binderfs_inode; } ;


 int BINDERFS_MAX_MINOR ;
 int BINDERFS_MAX_MINOR_CAPPED ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int SECOND_INODE ;
 int S_IFCHR ;
 int binder_ctl_fops ;
 int binderfs_dev ;
 int binderfs_minors ;
 int binderfs_minors_mutex ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int ida_alloc_max (int *,int ,int ) ;
 int init_ipc_ns ;
 int init_special_inode (struct inode*,int,int ) ;
 int iput (struct inode*) ;
 int kfree (struct binder_device*) ;
 struct binder_device* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static int binderfs_binder_ctl_create(struct super_block *sb)
{
 int minor, ret;
 struct dentry *dentry;
 struct binder_device *device;
 struct inode *inode = ((void*)0);
 struct dentry *root = sb->s_root;
 struct binderfs_info *info = sb->s_fs_info;



 bool use_reserve = 1;


 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (!device)
  return -ENOMEM;


 if (info->control_dentry) {
  ret = 0;
  goto out;
 }

 ret = -ENOMEM;
 inode = new_inode(sb);
 if (!inode)
  goto out;


 mutex_lock(&binderfs_minors_mutex);
 minor = ida_alloc_max(&binderfs_minors,
         use_reserve ? BINDERFS_MAX_MINOR :
         BINDERFS_MAX_MINOR_CAPPED,
         GFP_KERNEL);
 mutex_unlock(&binderfs_minors_mutex);
 if (minor < 0) {
  ret = minor;
  goto out;
 }

 inode->i_ino = SECOND_INODE;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 init_special_inode(inode, S_IFCHR | 0600,
      MKDEV(MAJOR(binderfs_dev), minor));
 inode->i_fop = &binder_ctl_fops;
 inode->i_uid = info->root_uid;
 inode->i_gid = info->root_gid;

 device->binderfs_inode = inode;
 device->miscdev.minor = minor;

 dentry = d_alloc_name(root, "binder-control");
 if (!dentry)
  goto out;

 inode->i_private = device;
 info->control_dentry = dentry;
 d_add(dentry, inode);

 return 0;

out:
 kfree(device);
 iput(inode);

 return ret;
}
