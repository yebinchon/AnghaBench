
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int ept_identity_map_addr; } ;


 TYPE_1__* to_kvm_vmx (struct kvm*) ;

__attribute__((used)) static int vmx_set_identity_map_addr(struct kvm *kvm, u64 ident_addr)
{
 to_kvm_vmx(kvm)->ept_identity_map_addr = ident_addr;
 return 0;
}
