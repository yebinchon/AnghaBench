
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vcpu_svm {int vcpu; } ;


 int kvm_rcx_read (int *) ;
 int kvm_read_edx_eax (int *) ;
 scalar_t__ kvm_set_xcr (int *,int ,int ) ;
 int kvm_skip_emulated_instruction (int *) ;

__attribute__((used)) static int xsetbv_interception(struct vcpu_svm *svm)
{
 u64 new_bv = kvm_read_edx_eax(&svm->vcpu);
 u32 index = kvm_rcx_read(&svm->vcpu);

 if (kvm_set_xcr(&svm->vcpu, index, new_bv) == 0) {
  return kvm_skip_emulated_instruction(&svm->vcpu);
 }

 return 1;
}
