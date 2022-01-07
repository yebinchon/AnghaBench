
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic_irq {scalar_t__ delivery_mode; scalar_t__ msi_redir_hint; } ;


 scalar_t__ APIC_DM_LOWEST ;

__attribute__((used)) static inline bool kvm_lowest_prio_delivery(struct kvm_lapic_irq *irq)
{
 return (irq->delivery_mode == APIC_DM_LOWEST ||
   irq->msi_redir_hint);
}
