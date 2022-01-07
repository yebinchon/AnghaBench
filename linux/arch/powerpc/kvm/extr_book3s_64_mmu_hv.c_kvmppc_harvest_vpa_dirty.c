
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vpa {int dirty; unsigned long gpa; int pinned_addr; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; } ;


 unsigned long PAGE_SHIFT ;
 int __set_bit_le (unsigned long,unsigned long*) ;

void kvmppc_harvest_vpa_dirty(struct kvmppc_vpa *vpa,
         struct kvm_memory_slot *memslot,
         unsigned long *map)
{
 unsigned long gfn;

 if (!vpa->dirty || !vpa->pinned_addr)
  return;
 gfn = vpa->gpa >> PAGE_SHIFT;
 if (gfn < memslot->base_gfn ||
     gfn >= memslot->base_gfn + memslot->npages)
  return;

 vpa->dirty = 0;
 if (map)
  __set_bit_le(gfn - memslot->base_gfn, map);
}
