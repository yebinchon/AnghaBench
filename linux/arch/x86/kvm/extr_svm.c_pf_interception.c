
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vcpu_svm {TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_3__ {int insn_len; int * insn_bytes; int exit_info_1; int exit_info_2; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int X86_FEATURE_DECODEASSISTS ;
 int __sme_clr (int ) ;
 int kvm_handle_page_fault (int *,int ,int ,int *,int ) ;
 scalar_t__ static_cpu_has (int ) ;

__attribute__((used)) static int pf_interception(struct vcpu_svm *svm)
{
 u64 fault_address = __sme_clr(svm->vmcb->control.exit_info_2);
 u64 error_code = svm->vmcb->control.exit_info_1;

 return kvm_handle_page_fault(&svm->vcpu, error_code, fault_address,
   static_cpu_has(X86_FEATURE_DECODEASSISTS) ?
   svm->vmcb->control.insn_bytes : ((void*)0),
   svm->vmcb->control.insn_len);
}
