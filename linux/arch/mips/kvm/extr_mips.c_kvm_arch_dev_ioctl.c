
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOIOCTLCMD ;

long kvm_arch_dev_ioctl(struct file *filp, unsigned int ioctl,
   unsigned long arg)
{
 return -ENOIOCTLCMD;
}
