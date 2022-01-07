
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int EOI_EXIT_BITMAP0 ;
 int EOI_EXIT_BITMAP1 ;
 int EOI_EXIT_BITMAP2 ;
 int EOI_EXIT_BITMAP3 ;
 int kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int vmcs_write64 (int ,int ) ;

__attribute__((used)) static void vmx_load_eoi_exitmap(struct kvm_vcpu *vcpu, u64 *eoi_exit_bitmap)
{
 if (!kvm_vcpu_apicv_active(vcpu))
  return;

 vmcs_write64(EOI_EXIT_BITMAP0, eoi_exit_bitmap[0]);
 vmcs_write64(EOI_EXIT_BITMAP1, eoi_exit_bitmap[1]);
 vmcs_write64(EOI_EXIT_BITMAP2, eoi_exit_bitmap[2]);
 vmcs_write64(EOI_EXIT_BITMAP3, eoi_exit_bitmap[3]);
}
