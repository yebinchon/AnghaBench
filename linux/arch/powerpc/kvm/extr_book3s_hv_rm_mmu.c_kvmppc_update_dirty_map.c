
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dirty_bitmap; scalar_t__ base_gfn; } ;


 unsigned long PAGE_SIZE ;
 int set_dirty_bits_atomic (int ,unsigned long,unsigned long) ;

void kvmppc_update_dirty_map(const struct kvm_memory_slot *memslot,
        unsigned long gfn, unsigned long psize)
{
 unsigned long npages;

 if (!psize || !memslot->dirty_bitmap)
  return;
 npages = (psize + PAGE_SIZE - 1) / PAGE_SIZE;
 gfn -= memslot->base_gfn;
 set_dirty_bits_atomic(memslot->dirty_bitmap, gfn, npages);
}
