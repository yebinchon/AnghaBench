
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int KVM_REQ_TRIPLE_FAULT ;
 scalar_t__ is_erratum_383 () ;
 int kvm_make_request (int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static void svm_handle_mce(struct vcpu_svm *svm)
{
 if (is_erratum_383()) {




  pr_err("KVM: Guest triggered AMD Erratum 383\n");

  kvm_make_request(KVM_REQ_TRIPLE_FAULT, &svm->vcpu);

  return;
 }





 asm volatile (
  "int $0x12\n");


 return;
}
