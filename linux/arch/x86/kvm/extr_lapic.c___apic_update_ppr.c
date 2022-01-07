
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int dummy; } ;


 int APIC_PROCPRI ;
 int APIC_TASKPRI ;
 int apic_find_highest_isr (struct kvm_lapic*) ;
 int kvm_lapic_get_reg (struct kvm_lapic*,int ) ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,int) ;

__attribute__((used)) static bool __apic_update_ppr(struct kvm_lapic *apic, u32 *new_ppr)
{
 u32 tpr, isrv, ppr, old_ppr;
 int isr;

 old_ppr = kvm_lapic_get_reg(apic, APIC_PROCPRI);
 tpr = kvm_lapic_get_reg(apic, APIC_TASKPRI);
 isr = apic_find_highest_isr(apic);
 isrv = (isr != -1) ? isr : 0;

 if ((tpr & 0xf0) >= (isrv & 0xf0))
  ppr = tpr & 0xff;
 else
  ppr = isrv & 0xf0;

 *new_ppr = ppr;
 if (old_ppr != ppr)
  kvm_lapic_set_reg(apic, APIC_PROCPRI, ppr);

 return ppr < old_ppr;
}
