
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct vcpu_vmx {int dummy; } ;
struct TYPE_2__ {unsigned long cr0; int regs_avail; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPU_BASED_CR3_LOAD_EXITING ;
 int CPU_BASED_CR3_STORE_EXITING ;
 int VCPU_EXREG_CR3 ;
 unsigned long X86_CR0_PG ;
 unsigned long X86_CR0_WP ;
 int exec_controls_clearbit (struct vcpu_vmx*,int) ;
 int exec_controls_setbit (struct vcpu_vmx*,int) ;
 int is_paging (struct kvm_vcpu*) ;
 int kvm_read_cr4 (struct kvm_vcpu*) ;
 int test_bit (int ,int *) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_decache_cr3 (struct kvm_vcpu*) ;
 int vmx_set_cr4 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void ept_update_paging_mode_cr0(unsigned long *hw_cr0,
     unsigned long cr0,
     struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);

 if (!test_bit(VCPU_EXREG_CR3, (ulong *)&vcpu->arch.regs_avail))
  vmx_decache_cr3(vcpu);
 if (!(cr0 & X86_CR0_PG)) {

  exec_controls_setbit(vmx, CPU_BASED_CR3_LOAD_EXITING |
       CPU_BASED_CR3_STORE_EXITING);
  vcpu->arch.cr0 = cr0;
  vmx_set_cr4(vcpu, kvm_read_cr4(vcpu));
 } else if (!is_paging(vcpu)) {

  exec_controls_clearbit(vmx, CPU_BASED_CR3_LOAD_EXITING |
         CPU_BASED_CR3_STORE_EXITING);
  vcpu->arch.cr0 = cr0;
  vmx_set_cr4(vcpu, kvm_read_cr4(vcpu));
 }

 if (!(cr0 & X86_CR0_WP))
  *hw_cr0 &= ~X86_CR0_WP;
}
