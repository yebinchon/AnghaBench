
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {int (* set_tss_addr ) (struct kvm*,unsigned long) ;} ;


 int EINVAL ;
 int PAGE_SIZE ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,unsigned long) ;

__attribute__((used)) static int kvm_vm_ioctl_set_tss_addr(struct kvm *kvm, unsigned long addr)
{
 int ret;

 if (addr > (unsigned int)(-3 * PAGE_SIZE))
  return -EINVAL;
 ret = kvm_x86_ops->set_tss_addr(kvm, addr);
 return ret;
}
