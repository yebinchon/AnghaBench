
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vcpu_svm {TYPE_1__* vmcb; int vcpu; } ;
struct TYPE_4__ {int insn_len; int * insn_bytes; int exit_info_1; int exit_info_2; } ;
struct TYPE_3__ {TYPE_2__ control; } ;


 int X86_FEATURE_DECODEASSISTS ;
 int __sme_clr (int ) ;
 int kvm_mmu_page_fault (int *,int ,int ,int *,int ) ;
 scalar_t__ static_cpu_has (int ) ;
 int trace_kvm_page_fault (int ,int ) ;

__attribute__((used)) static int npf_interception(struct vcpu_svm *svm)
{
 u64 fault_address = __sme_clr(svm->vmcb->control.exit_info_2);
 u64 error_code = svm->vmcb->control.exit_info_1;

 trace_kvm_page_fault(fault_address, error_code);
 return kvm_mmu_page_fault(&svm->vcpu, fault_address, error_code,
   static_cpu_has(X86_FEATURE_DECODEASSISTS) ?
   svm->vmcb->control.insn_bytes : ((void*)0),
   svm->vmcb->control.insn_len);
}
