
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct kvm {int dummy; } ;


 struct kvm_memory_slot* __gfn_to_memslot (int ,unsigned long) ;
 unsigned long hpte_rpn (unsigned long,int ) ;
 int kvm_memslots_raw (struct kvm*) ;
 int kvmppc_actual_pgsz (unsigned long,unsigned long) ;
 unsigned long* real_vmalloc_addr (int *) ;

__attribute__((used)) static unsigned long *revmap_for_hpte(struct kvm *kvm, unsigned long hpte_v,
          unsigned long hpte_gr,
          struct kvm_memory_slot **memslotp,
          unsigned long *gfnp)
{
 struct kvm_memory_slot *memslot;
 unsigned long *rmap;
 unsigned long gfn;

 gfn = hpte_rpn(hpte_gr, kvmppc_actual_pgsz(hpte_v, hpte_gr));
 memslot = __gfn_to_memslot(kvm_memslots_raw(kvm), gfn);
 if (memslotp)
  *memslotp = memslot;
 if (gfnp)
  *gfnp = gfn;
 if (!memslot)
  return ((void*)0);

 rmap = real_vmalloc_addr(&memslot->arch.rmap[gfn - memslot->base_gfn]);
 return rmap;
}
