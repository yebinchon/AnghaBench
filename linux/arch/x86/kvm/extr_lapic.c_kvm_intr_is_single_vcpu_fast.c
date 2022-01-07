
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_lapic_irq {scalar_t__ shorthand; } ;
struct kvm_lapic {struct kvm_vcpu* vcpu; } ;
struct kvm_apic_map {int dummy; } ;
struct TYPE_2__ {int apic_map; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned long find_first_bit (unsigned long*,int) ;
 int hweight16 (unsigned long) ;
 scalar_t__ kvm_apic_map_get_dest_lapic (struct kvm*,int *,struct kvm_lapic_irq*,struct kvm_apic_map*,struct kvm_lapic***,unsigned long*) ;
 struct kvm_apic_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool kvm_intr_is_single_vcpu_fast(struct kvm *kvm, struct kvm_lapic_irq *irq,
   struct kvm_vcpu **dest_vcpu)
{
 struct kvm_apic_map *map;
 unsigned long bitmap;
 struct kvm_lapic **dst = ((void*)0);
 bool ret = 0;

 if (irq->shorthand)
  return 0;

 rcu_read_lock();
 map = rcu_dereference(kvm->arch.apic_map);

 if (kvm_apic_map_get_dest_lapic(kvm, ((void*)0), irq, map, &dst, &bitmap) &&
   hweight16(bitmap) == 1) {
  unsigned long i = find_first_bit(&bitmap, 16);

  if (dst[i]) {
   *dest_vcpu = dst[i]->vcpu;
   ret = 1;
  }
 }

 rcu_read_unlock();
 return ret;
}
