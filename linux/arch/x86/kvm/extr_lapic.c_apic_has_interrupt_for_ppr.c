
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvm_lapic {TYPE_2__* vcpu; } ;
struct TYPE_6__ {int (* sync_pir_to_irr ) (TYPE_2__*) ;} ;
struct TYPE_4__ {scalar_t__ apicv_active; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int apic_find_highest_irr (struct kvm_lapic*) ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int apic_has_interrupt_for_ppr(struct kvm_lapic *apic, u32 ppr)
{
 int highest_irr;
 if (apic->vcpu->arch.apicv_active)
  highest_irr = kvm_x86_ops->sync_pir_to_irr(apic->vcpu);
 else
  highest_irr = apic_find_highest_irr(apic);
 if (highest_irr == -1 || (highest_irr & 0xF0) <= ppr)
  return -1;
 return highest_irr;
}
