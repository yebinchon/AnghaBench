
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int irr_pending; scalar_t__ regs; struct kvm_vcpu* vcpu; } ;
struct TYPE_4__ {int (* hwapic_irr_update ) (struct kvm_vcpu*,int ) ;} ;


 scalar_t__ APIC_IRR ;
 int apic_find_highest_irr (struct kvm_lapic*) ;
 int apic_search_irr (struct kvm_lapic*) ;
 int kvm_lapic_clear_vector (int,scalar_t__) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void apic_clear_irr(int vec, struct kvm_lapic *apic)
{
 struct kvm_vcpu *vcpu;

 vcpu = apic->vcpu;

 if (unlikely(vcpu->arch.apicv_active)) {

  kvm_lapic_clear_vector(vec, apic->regs + APIC_IRR);
  kvm_x86_ops->hwapic_irr_update(vcpu,
    apic_find_highest_irr(apic));
 } else {
  apic->irr_pending = 0;
  kvm_lapic_clear_vector(vec, apic->regs + APIC_IRR);
  if (apic_search_irr(apic) != -1)
   apic->irr_pending = 1;
 }
}
