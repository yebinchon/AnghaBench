
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apicv_active; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {scalar_t__ isr_count; int highest_isr_cache; struct kvm_vcpu* vcpu; scalar_t__ regs; } ;
struct TYPE_4__ {int (* hwapic_isr_update ) (struct kvm_vcpu*,int) ;} ;


 scalar_t__ APIC_ISR ;
 int BUG_ON (int) ;
 scalar_t__ MAX_APIC_VECTOR ;
 scalar_t__ __apic_test_and_set_vector (int,scalar_t__) ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void apic_set_isr(int vec, struct kvm_lapic *apic)
{
 struct kvm_vcpu *vcpu;

 if (__apic_test_and_set_vector(vec, apic->regs + APIC_ISR))
  return;

 vcpu = apic->vcpu;






 if (unlikely(vcpu->arch.apicv_active))
  kvm_x86_ops->hwapic_isr_update(vcpu, vec);
 else {
  ++apic->isr_count;
  BUG_ON(apic->isr_count > MAX_APIC_VECTOR);





  apic->highest_isr_cache = vec;
 }
}
