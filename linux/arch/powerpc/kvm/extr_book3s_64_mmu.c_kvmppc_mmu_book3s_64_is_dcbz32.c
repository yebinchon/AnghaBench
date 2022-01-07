
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int* hid; } ;


 TYPE_1__* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static bool kvmppc_mmu_book3s_64_is_dcbz32(struct kvm_vcpu *vcpu)
{
 return (to_book3s(vcpu)->hid[5] & 0x80);
}
