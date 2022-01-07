
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int irqchip_in_kernel (struct kvm*) ;

bool kvm_arch_can_set_irq_routing(struct kvm *kvm)
{
 return irqchip_in_kernel(kvm);
}
