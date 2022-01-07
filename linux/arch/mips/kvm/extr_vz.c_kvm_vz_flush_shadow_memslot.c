
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int kvm_vz_flush_shadow_all (struct kvm*) ;

__attribute__((used)) static void kvm_vz_flush_shadow_memslot(struct kvm *kvm,
     const struct kvm_memory_slot *slot)
{
 kvm_vz_flush_shadow_all(kvm);
}
