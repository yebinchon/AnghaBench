
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vmcb; scalar_t__ nmi_singlestep; } ;
struct TYPE_4__ {unsigned long rflags; } ;
struct TYPE_5__ {TYPE_1__ save; } ;


 unsigned long X86_EFLAGS_RF ;
 unsigned long X86_EFLAGS_TF ;
 TYPE_3__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_rflags(struct kvm_vcpu *vcpu, unsigned long rflags)
{
 if (to_svm(vcpu)->nmi_singlestep)
  rflags |= (X86_EFLAGS_TF | X86_EFLAGS_RF);






 to_svm(vcpu)->vmcb->save.rflags = rflags;
}
