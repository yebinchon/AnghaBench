
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu_hv_stimer {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct kvm_vcpu_hv_stimer* stimer; } ;


 TYPE_1__* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;

__attribute__((used)) static inline struct kvm_vcpu_hv_stimer *vcpu_to_stimer(struct kvm_vcpu *vcpu,
       int timer_index)
{
 return &vcpu_to_hv_vcpu(vcpu)->stimer[timer_index];
}
