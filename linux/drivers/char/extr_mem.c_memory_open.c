
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memdev {TYPE_1__* fops; int fmode; } ;
struct inode {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;} ;


 int ARRAY_SIZE (struct memdev*) ;
 int ENXIO ;
 struct memdev* devlist ;
 int iminor (struct inode*) ;
 int stub1 (struct inode*,struct file*) ;

__attribute__((used)) static int memory_open(struct inode *inode, struct file *filp)
{
 int minor;
 const struct memdev *dev;

 minor = iminor(inode);
 if (minor >= ARRAY_SIZE(devlist))
  return -ENXIO;

 dev = &devlist[minor];
 if (!dev->fops)
  return -ENXIO;

 filp->f_op = dev->fops;
 filp->f_mode |= dev->fmode;

 if (dev->fops->open)
  return dev->fops->open(inode, filp);

 return 0;
}
