
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {unsigned long ept_pointer; } ;


 TYPE_1__* get_vmcs12 (struct kvm_vcpu*) ;

__attribute__((used)) static inline unsigned long nested_ept_get_cr3(struct kvm_vcpu *vcpu)
{

 return get_vmcs12(vcpu)->ept_pointer;
}
