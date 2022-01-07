
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_mode; int i_ino; } ;


 int current_fsgid () ;
 int current_fsuid () ;
 int current_time (struct inode*) ;
 int get_next_ino () ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *
spufs_new_inode(struct super_block *sb, umode_t mode)
{
 struct inode *inode;

 inode = new_inode(sb);
 if (!inode)
  goto out;

 inode->i_ino = get_next_ino();
 inode->i_mode = mode;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
out:
 return inode;
}
