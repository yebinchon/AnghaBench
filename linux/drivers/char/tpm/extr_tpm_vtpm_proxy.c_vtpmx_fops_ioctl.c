
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOIOCTLCMD ;

 long vtpmx_ioc_new_dev (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long vtpmx_fops_ioctl(struct file *f, unsigned int ioctl,
        unsigned long arg)
{
 switch (ioctl) {
 case 128:
  return vtpmx_ioc_new_dev(f, ioctl, arg);
 default:
  return -ENOIOCTLCMD;
 }
}
