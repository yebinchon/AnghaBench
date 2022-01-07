
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;


 int INTERCEPT_VINTR ;
 int set_intercept (struct vcpu_svm*,int ) ;

__attribute__((used)) static void svm_set_vintr(struct vcpu_svm *svm)
{
 set_intercept(svm, INTERCEPT_VINTR);
}
