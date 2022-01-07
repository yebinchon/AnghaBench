
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_hv_irq_routing_update (struct kvm*) ;

void kvm_arch_irq_routing_update(struct kvm *kvm)
{
 kvm_hv_irq_routing_update(kvm);
}
