
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;


 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 int nested_svm_vmrun (struct vcpu_svm*) ;

__attribute__((used)) static int vmrun_interception(struct vcpu_svm *svm)
{
 if (nested_svm_check_permissions(svm))
  return 1;

 return nested_svm_vmrun(svm);
}
