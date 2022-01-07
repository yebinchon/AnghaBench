
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;


 scalar_t__ BINDERFS_MAX_MINOR ;
 scalar_t__ INODE_OFFSET ;
 int current_time (struct inode*) ;
 int iunique (struct super_block*,scalar_t__) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *binderfs_make_inode(struct super_block *sb, int mode)
{
 struct inode *ret;

 ret = new_inode(sb);
 if (ret) {
  ret->i_ino = iunique(sb, BINDERFS_MAX_MINOR + INODE_OFFSET);
  ret->i_mode = mode;
  ret->i_atime = ret->i_mtime = ret->i_ctime = current_time(ret);
 }
 return ret;
}
