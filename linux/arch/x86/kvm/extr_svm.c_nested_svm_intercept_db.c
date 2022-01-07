
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int nmi_singlestep_guest_rflags; int vcpu; int nmi_singlestep; } ;


 unsigned long DR6_BS ;
 int NESTED_EXIT_DONE ;
 int NESTED_EXIT_HOST ;
 int X86_EFLAGS_TF ;
 int disable_nmi_singlestep (struct vcpu_svm*) ;
 scalar_t__ kvm_get_dr (int *,int,unsigned long*) ;

__attribute__((used)) static int nested_svm_intercept_db(struct vcpu_svm *svm)
{
 unsigned long dr6;


 if (!svm->nmi_singlestep)
  return NESTED_EXIT_DONE;


 if (kvm_get_dr(&svm->vcpu, 6, &dr6))
  return NESTED_EXIT_DONE;
 if (!(dr6 & DR6_BS))
  return NESTED_EXIT_DONE;


 if (svm->nmi_singlestep_guest_rflags & X86_EFLAGS_TF) {
  disable_nmi_singlestep(svm);
  return NESTED_EXIT_DONE;
 }


 return NESTED_EXIT_HOST;
}
