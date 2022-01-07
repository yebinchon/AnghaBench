
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int AC_VECTOR ;
 int kvm_queue_exception_e (int *,int ,int ) ;

__attribute__((used)) static int ac_interception(struct vcpu_svm *svm)
{
 kvm_queue_exception_e(&svm->vcpu, AC_VECTOR, 0);
 return 1;
}
