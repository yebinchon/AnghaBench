
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u64 ;
struct TYPE_2__ {int vmxon_ptr; scalar_t__ vmxon; } ;
struct vcpu_vmx {int const msr_ia32_feature_control; TYPE_1__ nested; } ;
struct kvm_vcpu {int kvm; } ;
typedef int revision ;
typedef int gpa_t ;


 int FEATURE_CONTROL_LOCKED ;
 int FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX ;
 int UD_VECTOR ;
 scalar_t__ VMCS12_REVISION ;
 int VMXERR_VMXON_IN_VMX_ROOT_OPERATION ;
 int X86_CR4_VMXE ;
 int enter_vmx_operation (struct kvm_vcpu*) ;
 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_read_guest (int ,int ,scalar_t__*,int) ;
 int nested_vmx_failInvalid (struct kvm_vcpu*) ;
 int nested_vmx_failValid (struct kvm_vcpu*,int ) ;
 scalar_t__ nested_vmx_get_vmptr (struct kvm_vcpu*,int *) ;
 int nested_vmx_succeed (struct kvm_vcpu*) ;
 int page_address_valid (struct kvm_vcpu*,int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 scalar_t__ vmx_get_cpl (struct kvm_vcpu*) ;

__attribute__((used)) static int handle_vmon(struct kvm_vcpu *vcpu)
{
 int ret;
 gpa_t vmptr;
 uint32_t revision;
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 const u64 VMXON_NEEDED_FEATURES = FEATURE_CONTROL_LOCKED
  | FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX;
 if (!kvm_read_cr4_bits(vcpu, X86_CR4_VMXE)) {
  kvm_queue_exception(vcpu, UD_VECTOR);
  return 1;
 }


 if (vmx_get_cpl(vcpu)) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 if (vmx->nested.vmxon)
  return nested_vmx_failValid(vcpu,
   VMXERR_VMXON_IN_VMX_ROOT_OPERATION);

 if ((vmx->msr_ia32_feature_control & VMXON_NEEDED_FEATURES)
   != VMXON_NEEDED_FEATURES) {
  kvm_inject_gp(vcpu, 0);
  return 1;
 }

 if (nested_vmx_get_vmptr(vcpu, &vmptr))
  return 1;
 if (!page_address_valid(vcpu, vmptr))
  return nested_vmx_failInvalid(vcpu);

 if (kvm_read_guest(vcpu->kvm, vmptr, &revision, sizeof(revision)) ||
     revision != VMCS12_REVISION)
  return nested_vmx_failInvalid(vcpu);

 vmx->nested.vmxon_ptr = vmptr;
 ret = enter_vmx_operation(vcpu);
 if (ret)
  return ret;

 return nested_vmx_succeed(vcpu);
}
