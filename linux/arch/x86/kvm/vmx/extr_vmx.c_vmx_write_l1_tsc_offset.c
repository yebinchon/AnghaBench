
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vmcs12 {int cpu_based_vm_exec_control; scalar_t__ tsc_offset; } ;
struct TYPE_2__ {scalar_t__ tsc_offset; } ;
struct kvm_vcpu {TYPE_1__ arch; int vcpu_id; } ;


 int CPU_BASED_USE_TSC_OFFSETING ;
 int TSC_OFFSET ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int trace_kvm_write_tsc_offset (int ,scalar_t__,scalar_t__) ;
 int vmcs_write64 (int ,scalar_t__) ;

__attribute__((used)) static u64 vmx_write_l1_tsc_offset(struct kvm_vcpu *vcpu, u64 offset)
{
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);
 u64 g_tsc_offset = 0;







 if (is_guest_mode(vcpu) &&
     (vmcs12->cpu_based_vm_exec_control & CPU_BASED_USE_TSC_OFFSETING))
  g_tsc_offset = vmcs12->tsc_offset;

 trace_kvm_write_tsc_offset(vcpu->vcpu_id,
       vcpu->arch.tsc_offset - g_tsc_offset,
       offset);
 vmcs_write64(TSC_OFFSET, offset + g_tsc_offset);
 return offset + g_tsc_offset;
}
