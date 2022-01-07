
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; int s_umount; int s_active; } ;
struct file_system_type {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct super_block* mnt_sb; } ;


 int atomic_inc (int *) ;
 struct dentry* dget (int ) ;
 int down_write (int *) ;
 TYPE_1__* mnt ;

__attribute__((used)) static struct dentry *public_dev_mount(struct file_system_type *fs_type, int flags,
        const char *dev_name, void *data)
{
 struct super_block *s = mnt->mnt_sb;
 atomic_inc(&s->s_active);
 down_write(&s->s_umount);
 return dget(s->s_root);
}
