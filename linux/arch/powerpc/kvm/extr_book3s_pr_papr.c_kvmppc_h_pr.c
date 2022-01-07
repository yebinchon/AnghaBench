
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int halt_wakeup; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ stat; } ;
struct TYPE_5__ {int rtas_tokens; int enabled_hcalls; } ;
struct TYPE_6__ {int srcu; TYPE_2__ arch; } ;


 int EMULATE_DONE ;
 int EMULATE_FAIL ;
 int KVM_REQ_UNHALT ;
 unsigned long MAX_HCALL_OPCODE ;
 int MSR_EE ;
 int kvm_clear_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_block (struct kvm_vcpu*) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_h_pr_bulk_remove (struct kvm_vcpu*) ;
 int kvmppc_h_pr_enter (struct kvm_vcpu*) ;
 int kvmppc_h_pr_logical_ci_load (struct kvm_vcpu*) ;
 int kvmppc_h_pr_logical_ci_store (struct kvm_vcpu*) ;
 int kvmppc_h_pr_protect (struct kvm_vcpu*) ;
 int kvmppc_h_pr_put_tce (struct kvm_vcpu*) ;
 int kvmppc_h_pr_put_tce_indirect (struct kvm_vcpu*) ;
 int kvmppc_h_pr_remove (struct kvm_vcpu*) ;
 int kvmppc_h_pr_stuff_tce (struct kvm_vcpu*) ;
 int kvmppc_h_pr_xics_hcall (struct kvm_vcpu*,unsigned long) ;
 int kvmppc_rtas_hcall (struct kvm_vcpu*) ;
 int kvmppc_set_gpr (struct kvm_vcpu*,int,int ) ;
 int kvmppc_set_msr_fast (struct kvm_vcpu*,int) ;
 int kvmppc_xics_enabled (struct kvm_vcpu*) ;
 int list_empty (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int test_bit (unsigned long,int ) ;

int kvmppc_h_pr(struct kvm_vcpu *vcpu, unsigned long cmd)
{
 int rc, idx;

 if (cmd <= MAX_HCALL_OPCODE &&
     !test_bit(cmd/4, vcpu->kvm->arch.enabled_hcalls))
  return EMULATE_FAIL;

 switch (cmd) {
 case 141:
  return kvmppc_h_pr_enter(vcpu);
 case 132:
  return kvmppc_h_pr_remove(vcpu);
 case 135:
  return kvmppc_h_pr_protect(vcpu);
 case 144:
  return kvmppc_h_pr_bulk_remove(vcpu);
 case 134:
  return kvmppc_h_pr_put_tce(vcpu);
 case 133:
  return kvmppc_h_pr_put_tce_indirect(vcpu);
 case 130:
  return kvmppc_h_pr_stuff_tce(vcpu);
 case 143:
  kvmppc_set_msr_fast(vcpu, kvmppc_get_msr(vcpu) | MSR_EE);
  kvm_vcpu_block(vcpu);
  kvm_clear_request(KVM_REQ_UNHALT, vcpu);
  vcpu->stat.halt_wakeup++;
  return EMULATE_DONE;
 case 137:
  return kvmppc_h_pr_logical_ci_load(vcpu);
 case 136:
  return kvmppc_h_pr_logical_ci_store(vcpu);
 case 129:
 case 142:
 case 140:
 case 139:
 case 138:
 case 128:
  if (kvmppc_xics_enabled(vcpu))
   return kvmppc_h_pr_xics_hcall(vcpu, cmd);
  break;
 case 131:
  if (list_empty(&vcpu->kvm->arch.rtas_tokens))
   break;
  idx = srcu_read_lock(&vcpu->kvm->srcu);
  rc = kvmppc_rtas_hcall(vcpu);
  srcu_read_unlock(&vcpu->kvm->srcu, idx);
  if (rc)
   break;
  kvmppc_set_gpr(vcpu, 3, 0);
  return EMULATE_DONE;
 }

 return EMULATE_FAIL;
}
