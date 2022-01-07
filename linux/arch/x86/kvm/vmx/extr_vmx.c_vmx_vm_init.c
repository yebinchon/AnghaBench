
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pause_in_guest; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {int ept_pointer_lock; } ;
 int L1TF_MSG_L1D ;
 int L1TF_MSG_SMT ;
 int VMENTER_L1D_FLUSH_NEVER ;
 int X86_BUG_L1TF ;
 scalar_t__ boot_cpu_has (int ) ;
 scalar_t__ enable_ept ;
 int l1tf_mitigation ;
 int l1tf_vmx_mitigation ;
 int ple_gap ;
 int pr_warn_once (int ) ;
 int sched_smt_active () ;
 int spin_lock_init (int *) ;
 TYPE_2__* to_kvm_vmx (struct kvm*) ;

__attribute__((used)) static int vmx_vm_init(struct kvm *kvm)
{
 spin_lock_init(&to_kvm_vmx(kvm)->ept_pointer_lock);

 if (!ple_gap)
  kvm->arch.pause_in_guest = 1;

 if (boot_cpu_has(X86_BUG_L1TF) && enable_ept) {
  switch (l1tf_mitigation) {
  case 128:
  case 131:

   break;
  case 133:
  case 132:
  case 130:




   if (sched_smt_active())
    pr_warn_once(L1TF_MSG_SMT);
   if (l1tf_vmx_mitigation == VMENTER_L1D_FLUSH_NEVER)
    pr_warn_once(L1TF_MSG_L1D);
   break;
  case 129:

   break;
  }
 }
 return 0;
}
