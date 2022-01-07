
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;


 int binderfs_fill_super ;
 struct dentry* mount_nodev (struct file_system_type*,int,void*,int ) ;

__attribute__((used)) static struct dentry *binderfs_mount(struct file_system_type *fs_type,
         int flags, const char *dev_name,
         void *data)
{
 return mount_nodev(fs_type, flags, data, binderfs_fill_super);
}
