
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int irqchip_split (struct kvm*) ;
 int kvm_make_scan_ioapic_request (struct kvm*) ;

void kvm_arch_post_irq_routing_update(struct kvm *kvm)
{
 if (!irqchip_split(kvm))
  return;
 kvm_make_scan_ioapic_request(kvm);
}
