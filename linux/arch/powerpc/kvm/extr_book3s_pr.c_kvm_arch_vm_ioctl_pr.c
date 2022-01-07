
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long ENOTTY ;

__attribute__((used)) static long kvm_arch_vm_ioctl_pr(struct file *filp,
     unsigned int ioctl, unsigned long arg)
{
 return -ENOTTY;
}
