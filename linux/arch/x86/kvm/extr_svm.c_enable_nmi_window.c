
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ exit_required; } ;
struct TYPE_8__ {int hflags; } ;
struct TYPE_9__ {TYPE_3__ arch; } ;
struct vcpu_svm {int nmi_singlestep; TYPE_2__* vmcb; int nmi_singlestep_guest_rflags; TYPE_5__ nested; TYPE_4__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {int rflags; } ;
struct TYPE_7__ {TYPE_1__ save; } ;


 int HF_IRET_MASK ;
 int HF_NMI_MASK ;
 int INTERCEPT_STGI ;
 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;
 int gif_set (struct vcpu_svm*) ;
 int set_intercept (struct vcpu_svm*,int ) ;
 int svm_get_rflags (struct kvm_vcpu*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 scalar_t__ vgif_enabled (struct vcpu_svm*) ;

__attribute__((used)) static void enable_nmi_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if ((svm->vcpu.arch.hflags & (HF_NMI_MASK | HF_IRET_MASK))
     == HF_NMI_MASK)
  return;

 if (!gif_set(svm)) {
  if (vgif_enabled(svm))
   set_intercept(svm, INTERCEPT_STGI);
  return;
 }

 if (svm->nested.exit_required)
  return;





 svm->nmi_singlestep_guest_rflags = svm_get_rflags(vcpu);
 svm->nmi_singlestep = 1;
 svm->vmcb->save.rflags |= (X86_EFLAGS_TF | X86_EFLAGS_RF);
}
