
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulong ;
typedef int u64 ;
struct TYPE_5__ {int cr0; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_4__* vmcb; TYPE_2__ vcpu; } ;
struct TYPE_7__ {int cr0; } ;
struct TYPE_8__ {TYPE_3__ save; } ;


 int INTERCEPT_CR0_READ ;
 int INTERCEPT_CR0_WRITE ;
 int SVM_CR0_SELECTIVE_MASK ;
 int VMCB_CR ;
 int clr_cr_intercept (struct vcpu_svm*,int ) ;
 int mark_dirty (TYPE_4__*,int ) ;
 int set_cr_intercept (struct vcpu_svm*,int ) ;

__attribute__((used)) static void update_cr0_intercept(struct vcpu_svm *svm)
{
 ulong gcr0 = svm->vcpu.arch.cr0;
 u64 *hcr0 = &svm->vmcb->save.cr0;

 *hcr0 = (*hcr0 & ~SVM_CR0_SELECTIVE_MASK)
  | (gcr0 & SVM_CR0_SELECTIVE_MASK);

 mark_dirty(svm->vmcb, VMCB_CR);

 if (gcr0 == *hcr0) {
  clr_cr_intercept(svm, INTERCEPT_CR0_READ);
  clr_cr_intercept(svm, INTERCEPT_CR0_WRITE);
 } else {
  set_cr_intercept(svm, INTERCEPT_CR0_READ);
  set_cr_intercept(svm, INTERCEPT_CR0_WRITE);
 }
}
