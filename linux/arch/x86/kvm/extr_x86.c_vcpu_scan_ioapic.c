
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load_eoi_exitmap_pending; int ioapic_handled_vectors; scalar_t__ apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
struct TYPE_4__ {int (* sync_pir_to_irr ) (struct kvm_vcpu*) ;} ;


 int KVM_REQ_LOAD_EOI_EXITMAP ;
 int bitmap_zero (int ,int) ;
 scalar_t__ ioapic_in_kernel (int ) ;
 scalar_t__ irqchip_split (int ) ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int kvm_apic_present (struct kvm_vcpu*) ;
 int kvm_ioapic_scan_entry (struct kvm_vcpu*,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_scan_ioapic_routes (struct kvm_vcpu*,int ) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void vcpu_scan_ioapic(struct kvm_vcpu *vcpu)
{
 if (!kvm_apic_present(vcpu))
  return;

 bitmap_zero(vcpu->arch.ioapic_handled_vectors, 256);

 if (irqchip_split(vcpu->kvm))
  kvm_scan_ioapic_routes(vcpu, vcpu->arch.ioapic_handled_vectors);
 else {
  if (vcpu->arch.apicv_active)
   kvm_x86_ops->sync_pir_to_irr(vcpu);
  if (ioapic_in_kernel(vcpu->kvm))
   kvm_ioapic_scan_entry(vcpu, vcpu->arch.ioapic_handled_vectors);
 }

 if (is_guest_mode(vcpu))
  vcpu->arch.load_eoi_exitmap_pending = 1;
 else
  kvm_make_request(KVM_REQ_LOAD_EOI_EXITMAP, vcpu);
}
