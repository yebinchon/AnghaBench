
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openpic {int kvm; } ;
struct kvm_irq_routing_entry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct kvm_irq_routing_entry*) ;
 int kvm_set_irq_routing (int ,struct kvm_irq_routing_entry*,int ,int ) ;
 struct kvm_irq_routing_entry* kzalloc (int,int ) ;

__attribute__((used)) static int mpic_set_default_irq_routing(struct openpic *opp)
{
 struct kvm_irq_routing_entry *routing;


 routing = kzalloc((sizeof(*routing)), GFP_KERNEL);
 if (!routing)
  return -ENOMEM;

 kvm_set_irq_routing(opp->kvm, routing, 0, 0);

 kfree(routing);
 return 0;
}
