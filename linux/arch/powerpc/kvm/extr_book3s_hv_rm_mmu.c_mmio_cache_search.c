
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmio_hpte_cache_entry {long mmio_update; unsigned int slb_base_pshift; unsigned int eaddr; unsigned long slb_v; } ;
struct TYPE_3__ {struct mmio_hpte_cache_entry* entry; } ;
struct TYPE_4__ {TYPE_1__ mmio_cache; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 unsigned int MMIO_HPTE_CACHE_SIZE ;

__attribute__((used)) static struct mmio_hpte_cache_entry *mmio_cache_search(struct kvm_vcpu *vcpu,
  unsigned long eaddr, unsigned long slb_v, long mmio_update)
{
 struct mmio_hpte_cache_entry *entry = ((void*)0);
 unsigned int pshift;
 unsigned int i;

 for (i = 0; i < MMIO_HPTE_CACHE_SIZE; i++) {
  entry = &vcpu->arch.mmio_cache.entry[i];
  if (entry->mmio_update == mmio_update) {
   pshift = entry->slb_base_pshift;
   if ((entry->eaddr >> pshift) == (eaddr >> pshift) &&
       entry->slb_v == slb_v)
    return entry;
  }
 }
 return ((void*)0);
}
