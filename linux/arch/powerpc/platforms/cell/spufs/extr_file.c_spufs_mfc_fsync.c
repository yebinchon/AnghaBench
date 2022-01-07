
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 struct inode* file_inode (struct file*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int spufs_mfc_flush (struct file*,int *) ;

__attribute__((used)) static int spufs_mfc_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file_inode(file);
 int err = file_write_and_wait_range(file, start, end);
 if (!err) {
  inode_lock(inode);
  err = spufs_mfc_flush(file, ((void*)0));
  inode_unlock(inode);
 }
 return err;
}
