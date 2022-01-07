
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int empty_routing ;
 int kvm_set_irq_routing (struct kvm*,int ,int ,int ) ;

int kvm_setup_empty_irq_routing(struct kvm *kvm)
{
 return kvm_set_irq_routing(kvm, empty_routing, 0, 0);
}
