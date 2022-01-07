
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct hypfs_sb_info {int gid; int uid; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct hypfs_sb_info* s_fs_info; } ;


 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hypfs_show_options(struct seq_file *s, struct dentry *root)
{
 struct hypfs_sb_info *hypfs_info = root->d_sb->s_fs_info;

 seq_printf(s, ",uid=%u", from_kuid_munged(&init_user_ns, hypfs_info->uid));
 seq_printf(s, ",gid=%u", from_kgid_munged(&init_user_ns, hypfs_info->gid));
 return 0;
}
