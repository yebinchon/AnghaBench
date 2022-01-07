
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic_irq {int dest_id; int msi_redir_hint; int delivery_mode; scalar_t__ level; scalar_t__ dest_mode; scalar_t__ shorthand; } ;
struct kvm {int dummy; } ;


 int APIC_DM_REMRD ;
 int kvm_irq_delivery_to_apic (struct kvm*,int *,struct kvm_lapic_irq*,int *) ;

__attribute__((used)) static void kvm_pv_kick_cpu_op(struct kvm *kvm, unsigned long flags, int apicid)
{
 struct kvm_lapic_irq lapic_irq;

 lapic_irq.shorthand = 0;
 lapic_irq.dest_mode = 0;
 lapic_irq.level = 0;
 lapic_irq.dest_id = apicid;
 lapic_irq.msi_redir_hint = 0;

 lapic_irq.delivery_mode = APIC_DM_REMRD;
 kvm_irq_delivery_to_apic(kvm, ((void*)0), &lapic_irq, ((void*)0));
}
