
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int msr; } ;
struct TYPE_8__ {int trap; int fault_dsisr; TYPE_2__ shregs; int fault_dar; int mce_evt; } ;
struct TYPE_5__ {int ext_intr_exits; int dec_exits; int sum_exits; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_3__* kvm; TYPE_1__ stat; } ;
struct kvm_run {int dummy; } ;
struct TYPE_7__ {int srcu; } ;
 int DSISR_ISSTORE ;
 int DSISR_SRR1_MATCH_64S ;
 int HSRR1_HISI_WRITE ;
 int MSR_HV ;
 int RESUME_GUEST ;
 int RESUME_HOST ;
 int kvmhv_nested_page_fault (struct kvm_run*,struct kvm_vcpu*) ;
 int kvmhv_p9_tm_emulation (struct kvm_vcpu*) ;
 int kvmppc_dump_regs (struct kvm_vcpu*) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_get_pc (struct kvm_vcpu*) ;
 int kvmppc_xics_rm_complete (struct kvm_vcpu*,int ) ;
 int machine_check_print_event_info (int *,int,int) ;
 int pr_emerg (char*,...) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int xics_on_xive () ;

__attribute__((used)) static int kvmppc_handle_nested_exit(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
 int r;
 int srcu_idx;

 vcpu->stat.sum_exits++;
 if (vcpu->arch.shregs.msr & MSR_HV) {
  pr_emerg("KVM trap in HV mode while nested!\n");
  pr_emerg("trap=0x%x | pc=0x%lx | msr=0x%llx\n",
    vcpu->arch.trap, kvmppc_get_pc(vcpu),
    vcpu->arch.shregs.msr);
  kvmppc_dump_regs(vcpu);
  return RESUME_HOST;
 }
 switch (vcpu->arch.trap) {

 case 137:
  vcpu->stat.dec_exits++;
  r = RESUME_GUEST;
  break;
 case 139:
  vcpu->stat.ext_intr_exits++;
  r = RESUME_HOST;
  break;
 case 133:
 case 131:
  vcpu->stat.ext_intr_exits++;
  r = RESUME_GUEST;
  break;

 case 138:
 case 129:
 case 128:
  r = RESUME_GUEST;
  break;
 case 130:

  r = RESUME_HOST;

  machine_check_print_event_info(&vcpu->arch.mce_evt, 0, 1);
  break;






 case 134:
  srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
  r = kvmhv_nested_page_fault(run, vcpu);
  srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
  break;
 case 132:
  vcpu->arch.fault_dar = kvmppc_get_pc(vcpu);
  vcpu->arch.fault_dsisr = kvmppc_get_msr(vcpu) &
      DSISR_SRR1_MATCH_64S;
  if (vcpu->arch.shregs.msr & HSRR1_HISI_WRITE)
   vcpu->arch.fault_dsisr |= DSISR_ISSTORE;
  srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
  r = kvmhv_nested_page_fault(run, vcpu);
  srcu_read_unlock(&vcpu->kvm->srcu, srcu_idx);
  break;
 case 136:
  vcpu->arch.trap = 0;
  r = RESUME_GUEST;
  if (!xics_on_xive())
   kvmppc_xics_rm_complete(vcpu, 0);
  break;
 default:
  r = RESUME_HOST;
  break;
 }

 return r;
}
