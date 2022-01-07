
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_sb_info {scalar_t__ debug; } ;
struct seq_file {int dummy; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct dentry {struct inode* d_inode; int d_sb; } ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int S_IALLUGO ;
 int from_kgid_munged (int *,int ) ;
 int from_kuid_munged (int *,int ) ;
 int gid_eq (int ,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 struct spufs_sb_info* spufs_get_sb_info (int ) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int spufs_show_options(struct seq_file *m, struct dentry *root)
{
 struct spufs_sb_info *sbi = spufs_get_sb_info(root->d_sb);
 struct inode *inode = root->d_inode;

 if (!uid_eq(inode->i_uid, GLOBAL_ROOT_UID))
  seq_printf(m, ",uid=%u",
      from_kuid_munged(&init_user_ns, inode->i_uid));
 if (!gid_eq(inode->i_gid, GLOBAL_ROOT_GID))
  seq_printf(m, ",gid=%u",
      from_kgid_munged(&init_user_ns, inode->i_gid));
 if ((inode->i_mode & S_IALLUGO) != 0775)
  seq_printf(m, ",mode=%o", inode->i_mode);
 if (sbi->debug)
  seq_puts(m, ",debug");
 return 0;
}
