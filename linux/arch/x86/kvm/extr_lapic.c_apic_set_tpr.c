
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 int APIC_TASKPRI ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,int ) ;

__attribute__((used)) static void apic_set_tpr(struct kvm_lapic *apic, u32 tpr)
{
 kvm_lapic_set_reg(apic, APIC_TASKPRI, tpr);
 apic_update_ppr(apic);
}
