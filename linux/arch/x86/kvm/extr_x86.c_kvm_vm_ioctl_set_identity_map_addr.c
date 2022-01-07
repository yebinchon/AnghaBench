
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int (* set_identity_map_addr ) (struct kvm*,int ) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,int ) ;

__attribute__((used)) static int kvm_vm_ioctl_set_identity_map_addr(struct kvm *kvm,
           u64 ident_addr)
{
 return kvm_x86_ops->set_identity_map_addr(kvm, ident_addr);
}
