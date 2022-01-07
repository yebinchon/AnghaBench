
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int default_routing ;
 int kvm_set_irq_routing (struct kvm*,int ,int ,int ) ;

int kvm_setup_default_irq_routing(struct kvm *kvm)
{
 return kvm_set_irq_routing(kvm, default_routing,
       ARRAY_SIZE(default_routing), 0);
}
