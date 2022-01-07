
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int ps3flash_dev ;
 int ps3flash_writeback (int ) ;

__attribute__((used)) static int ps3flash_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file_inode(file);
 int err;
 inode_lock(inode);
 err = ps3flash_writeback(ps3flash_dev);
 inode_unlock(inode);
 return err;
}
