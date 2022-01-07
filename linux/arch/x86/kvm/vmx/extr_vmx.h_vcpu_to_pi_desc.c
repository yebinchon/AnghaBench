
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pi_desc {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct pi_desc pi_desc; } ;


 TYPE_1__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline struct pi_desc *vcpu_to_pi_desc(struct kvm_vcpu *vcpu)
{
 return &(to_vmx(vcpu)->pi_desc);
}
