
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int host_apf_reason; } ;
struct TYPE_4__ {int l1tf_flush_l1d; TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;




 int kvm_async_pf_task_wait (int ,int ) ;
 int kvm_async_pf_task_wake (int ) ;
 int kvm_event_needs_reinjection (struct kvm_vcpu*) ;
 int kvm_mmu_page_fault (struct kvm_vcpu*,int ,int ,char*,int) ;
 int kvm_mmu_unprotect_page_virt (struct kvm_vcpu*,int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int trace_kvm_page_fault (int ,int ) ;

int kvm_handle_page_fault(struct kvm_vcpu *vcpu, u64 error_code,
    u64 fault_address, char *insn, int insn_len)
{
 int r = 1;

 vcpu->arch.l1tf_flush_l1d = 1;
 switch (vcpu->arch.apf.host_apf_reason) {
 default:
  trace_kvm_page_fault(fault_address, error_code);

  if (kvm_event_needs_reinjection(vcpu))
   kvm_mmu_unprotect_page_virt(vcpu, fault_address);
  r = kvm_mmu_page_fault(vcpu, fault_address, error_code, insn,
    insn_len);
  break;
 case 129:
  vcpu->arch.apf.host_apf_reason = 0;
  local_irq_disable();
  kvm_async_pf_task_wait(fault_address, 0);
  local_irq_enable();
  break;
 case 128:
  vcpu->arch.apf.host_apf_reason = 0;
  local_irq_disable();
  kvm_async_pf_task_wake(fault_address);
  local_irq_enable();
  break;
 }
 return r;
}
