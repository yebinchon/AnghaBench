
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;


 int INTERCEPT_VINTR ;
 int clr_intercept (struct vcpu_svm*,int ) ;

__attribute__((used)) static void svm_clear_vintr(struct vcpu_svm *svm)
{
 clr_intercept(svm, INTERCEPT_VINTR);
}
