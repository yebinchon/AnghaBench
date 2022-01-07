
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HF_VINTR_MASK ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool svm_nested_virtualize_tpr(struct kvm_vcpu *vcpu)
{
 return is_guest_mode(vcpu) && (vcpu->arch.hflags & HF_VINTR_MASK);
}
