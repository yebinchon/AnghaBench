
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ f_pos; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 scalar_t__ EOVERFLOW ;
 unsigned long long MAX_ERRNO ;


 int file_inode (struct file*) ;
 int force_successful_syscall_return () ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;

__attribute__((used)) static loff_t memory_lseek(struct file *file, loff_t offset, int orig)
{
 loff_t ret;

 inode_lock(file_inode(file));
 switch (orig) {
 case 129:
  offset += file->f_pos;

 case 128:

  if ((unsigned long long)offset >= -MAX_ERRNO) {
   ret = -EOVERFLOW;
   break;
  }
  file->f_pos = offset;
  ret = file->f_pos;
  force_successful_syscall_return();
  break;
 default:
  ret = -EINVAL;
 }
 inode_unlock(file_inode(file));
 return ret;
}
