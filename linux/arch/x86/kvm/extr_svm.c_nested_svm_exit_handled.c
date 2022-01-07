
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;


 int NESTED_EXIT_DONE ;
 int nested_svm_intercept (struct vcpu_svm*) ;
 int nested_svm_vmexit (struct vcpu_svm*) ;

__attribute__((used)) static int nested_svm_exit_handled(struct vcpu_svm *svm)
{
 int vmexit;

 vmexit = nested_svm_intercept(svm);

 if (vmexit == NESTED_EXIT_DONE)
  nested_svm_vmexit(svm);

 return vmexit;
}
