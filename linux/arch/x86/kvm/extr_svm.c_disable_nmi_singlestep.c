
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int guest_debug; } ;
struct vcpu_svm {int nmi_singlestep; int nmi_singlestep_guest_rflags; TYPE_2__* vmcb; TYPE_1__ vcpu; } ;
struct TYPE_6__ {int rflags; } ;
struct TYPE_5__ {TYPE_3__ save; } ;


 int KVM_GUESTDBG_SINGLESTEP ;
 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;

__attribute__((used)) static void disable_nmi_singlestep(struct vcpu_svm *svm)
{
 svm->nmi_singlestep = 0;

 if (!(svm->vcpu.guest_debug & KVM_GUESTDBG_SINGLESTEP)) {

  if (!(svm->nmi_singlestep_guest_rflags & X86_EFLAGS_TF))
   svm->vmcb->save.rflags &= ~X86_EFLAGS_TF;
  if (!(svm->nmi_singlestep_guest_rflags & X86_EFLAGS_RF))
   svm->vmcb->save.rflags &= ~X86_EFLAGS_RF;
 }
}
