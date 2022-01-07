
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int UD_VECTOR ;
 int kvm_queue_exception (int *,int ) ;

__attribute__((used)) static int rdpru_interception(struct vcpu_svm *svm)
{
 kvm_queue_exception(&svm->vcpu, UD_VECTOR);
 return 1;
}
