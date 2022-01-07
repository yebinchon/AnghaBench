
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {int asid_generation; TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int tlb_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int TLB_CONTROL_FLUSH_ASID ;
 int X86_FEATURE_FLUSHBYASID ;
 scalar_t__ static_cpu_has (int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_flush_tlb(struct kvm_vcpu *vcpu, bool invalidate_gpa)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (static_cpu_has(X86_FEATURE_FLUSHBYASID))
  svm->vmcb->control.tlb_ctl = TLB_CONTROL_FLUSH_ASID;
 else
  svm->asid_generation--;
}
