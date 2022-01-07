
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hflags; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;


 int HF_NMI_MASK ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static bool svm_get_nmi_mask(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 return !!(svm->vcpu.arch.hflags & HF_NMI_MASK);
}
