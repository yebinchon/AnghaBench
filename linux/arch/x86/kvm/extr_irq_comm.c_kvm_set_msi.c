
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic_irq {int dummy; } ;
struct kvm_kernel_irq_routing_entry {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int kvm_irq_delivery_to_apic (struct kvm*,int *,struct kvm_lapic_irq*,int *) ;
 scalar_t__ kvm_msi_route_invalid (struct kvm*,struct kvm_kernel_irq_routing_entry*) ;
 int kvm_set_msi_irq (struct kvm*,struct kvm_kernel_irq_routing_entry*,struct kvm_lapic_irq*) ;

int kvm_set_msi(struct kvm_kernel_irq_routing_entry *e,
  struct kvm *kvm, int irq_source_id, int level, bool line_status)
{
 struct kvm_lapic_irq irq;

 if (kvm_msi_route_invalid(kvm, e))
  return -EINVAL;

 if (!level)
  return -1;

 kvm_set_msi_irq(kvm, e, &irq);

 return kvm_irq_delivery_to_apic(kvm, ((void*)0), &irq, ((void*)0));
}
