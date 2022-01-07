
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic_irq {int dummy; } ;
struct kvm_kernel_irq_routing_entry {int type; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int EWOULDBLOCK ;


 int kvm_hv_set_sint (struct kvm_kernel_irq_routing_entry*,struct kvm*,int,int,int) ;
 int kvm_irq_delivery_to_apic_fast (struct kvm*,int *,struct kvm_lapic_irq*,int*,int *) ;
 int kvm_msi_route_invalid (struct kvm*,struct kvm_kernel_irq_routing_entry*) ;
 int kvm_set_msi_irq (struct kvm*,struct kvm_kernel_irq_routing_entry*,struct kvm_lapic_irq*) ;

int kvm_arch_set_irq_inatomic(struct kvm_kernel_irq_routing_entry *e,
         struct kvm *kvm, int irq_source_id, int level,
         bool line_status)
{
 struct kvm_lapic_irq irq;
 int r;

 switch (e->type) {
 case 129:
  return kvm_hv_set_sint(e, kvm, irq_source_id, level,
           line_status);

 case 128:
  if (kvm_msi_route_invalid(kvm, e))
   return -EINVAL;

  kvm_set_msi_irq(kvm, e, &irq);

  if (kvm_irq_delivery_to_apic_fast(kvm, ((void*)0), &irq, &r, ((void*)0)))
   return r;
  break;

 default:
  break;
 }

 return -EWOULDBLOCK;
}
