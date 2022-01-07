
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstat {scalar_t__ rdev; int mode; } ;
struct inode {int * i_private; } ;
struct device {scalar_t__ devt; } ;


 int S_ISBLK (int ) ;
 int S_ISCHR (int ) ;
 scalar_t__ is_blockdev (struct device*) ;
 int thread ;

__attribute__((used)) static int dev_mynode(struct device *dev, struct inode *inode, struct kstat *stat)
{

 if (inode->i_private != &thread)
  return 0;


 if (is_blockdev(dev)) {
  if (!S_ISBLK(stat->mode))
   return 0;
 } else {
  if (!S_ISCHR(stat->mode))
   return 0;
 }
 if (stat->rdev != dev->devt)
  return 0;


 return 1;
}
