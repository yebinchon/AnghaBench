
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
struct TYPE_3__ {int asid; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int invlpga (int ,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_flush_tlb_gva(struct kvm_vcpu *vcpu, gva_t gva)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 invlpga(gva, svm->vmcb->control.asid);
}
