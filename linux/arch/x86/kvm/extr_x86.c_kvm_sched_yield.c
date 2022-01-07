
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int ready; } ;
struct kvm_apic_map {unsigned long max_apic_id; TYPE_2__** phys_map; } ;
struct TYPE_3__ {int apic_map; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_4__ {struct kvm_vcpu* vcpu; } ;


 scalar_t__ READ_ONCE (int ) ;
 int kvm_vcpu_yield_to (struct kvm_vcpu*) ;
 scalar_t__ likely (struct kvm_apic_map*) ;
 struct kvm_apic_map* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void kvm_sched_yield(struct kvm *kvm, unsigned long dest_id)
{
 struct kvm_vcpu *target = ((void*)0);
 struct kvm_apic_map *map;

 rcu_read_lock();
 map = rcu_dereference(kvm->arch.apic_map);

 if (likely(map) && dest_id <= map->max_apic_id && map->phys_map[dest_id])
  target = map->phys_map[dest_id]->vcpu;

 rcu_read_unlock();

 if (target && READ_ONCE(target->ready))
  kvm_vcpu_yield_to(target);
}
