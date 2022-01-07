
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvm_lapic {int lvt0_in_nmi_mode; TYPE_3__* vcpu; } ;
struct TYPE_6__ {TYPE_2__* kvm; } ;
struct TYPE_4__ {int vapics_in_nmi_mode; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int apic_lvt_nmi_mode (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;

__attribute__((used)) static void apic_manage_nmi_watchdog(struct kvm_lapic *apic, u32 lvt0_val)
{
 bool lvt0_in_nmi_mode = apic_lvt_nmi_mode(lvt0_val);

 if (apic->lvt0_in_nmi_mode != lvt0_in_nmi_mode) {
  apic->lvt0_in_nmi_mode = lvt0_in_nmi_mode;
  if (lvt0_in_nmi_mode) {
   atomic_inc(&apic->vcpu->kvm->arch.vapics_in_nmi_mode);
  } else
   atomic_dec(&apic->vcpu->kvm->arch.vapics_in_nmi_mode);
 }
}
