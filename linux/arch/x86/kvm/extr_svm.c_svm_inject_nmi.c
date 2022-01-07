
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; } ;
struct TYPE_8__ {int nmi_injections; } ;
struct TYPE_7__ {int hflags; } ;
struct kvm_vcpu {TYPE_4__ stat; TYPE_3__ arch; } ;
struct TYPE_5__ {int event_inj; } ;
struct TYPE_6__ {TYPE_1__ control; } ;


 int HF_NMI_MASK ;
 int INTERCEPT_IRET ;
 int SVM_EVTINJ_TYPE_NMI ;
 int SVM_EVTINJ_VALID ;
 int set_intercept (struct vcpu_svm*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_inject_nmi(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->control.event_inj = SVM_EVTINJ_VALID | SVM_EVTINJ_TYPE_NMI;
 vcpu->arch.hflags |= HF_NMI_MASK;
 set_intercept(svm, INTERCEPT_IRET);
 ++vcpu->stat.nmi_injections;
}
