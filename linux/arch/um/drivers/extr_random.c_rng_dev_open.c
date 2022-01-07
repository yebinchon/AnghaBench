
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;

__attribute__((used)) static int rng_dev_open (struct inode *inode, struct file *filp)
{

 if ((filp->f_mode & FMODE_READ) == 0)
  return -EINVAL;
 if ((filp->f_mode & FMODE_WRITE) != 0)
  return -EINVAL;

 return 0;
}
