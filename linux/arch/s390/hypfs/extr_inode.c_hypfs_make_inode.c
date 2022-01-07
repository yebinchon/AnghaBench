
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct inode {int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; int i_ino; } ;
struct hypfs_sb_info {int gid; int uid; } ;


 scalar_t__ S_ISDIR (int ) ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static struct inode *hypfs_make_inode(struct super_block *sb, umode_t mode)
{
 struct inode *ret = new_inode(sb);

 if (ret) {
  struct hypfs_sb_info *hypfs_info = sb->s_fs_info;
  ret->i_ino = get_next_ino();
  ret->i_mode = mode;
  ret->i_uid = hypfs_info->uid;
  ret->i_gid = hypfs_info->gid;
  ret->i_atime = ret->i_mtime = ret->i_ctime = current_time(ret);
  if (S_ISDIR(mode))
   set_nlink(ret, 2);
 }
 return ret;
}
