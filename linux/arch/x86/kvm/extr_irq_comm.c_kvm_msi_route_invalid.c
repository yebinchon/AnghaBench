
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int address_hi; } ;
struct kvm_kernel_irq_routing_entry {TYPE_2__ msi; } ;
struct TYPE_3__ {scalar_t__ x2apic_format; } ;
struct kvm {TYPE_1__ arch; } ;



__attribute__((used)) static inline bool kvm_msi_route_invalid(struct kvm *kvm,
  struct kvm_kernel_irq_routing_entry *e)
{
 return kvm->arch.x2apic_format && (e->msi.address_hi & 0xff);
}
