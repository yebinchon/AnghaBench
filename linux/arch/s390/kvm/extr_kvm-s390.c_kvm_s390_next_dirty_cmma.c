
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int used_slots; struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; } ;


 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;
 int gfn_to_memslot_approx (struct kvm_memslots*,unsigned long) ;
 int kvm_second_dirty_bitmap (struct kvm_memory_slot*) ;

__attribute__((used)) static unsigned long kvm_s390_next_dirty_cmma(struct kvm_memslots *slots,
           unsigned long cur_gfn)
{
 int slotidx = gfn_to_memslot_approx(slots, cur_gfn);
 struct kvm_memory_slot *ms = slots->memslots + slotidx;
 unsigned long ofs = cur_gfn - ms->base_gfn;

 if (ms->base_gfn + ms->npages <= cur_gfn) {
  slotidx--;

  if (slotidx < 0)
   slotidx = slots->used_slots - 1;

  ms = slots->memslots + slotidx;
  ofs = 0;
 }
 ofs = find_next_bit(kvm_second_dirty_bitmap(ms), ms->npages, ofs);
 while ((slotidx > 0) && (ofs >= ms->npages)) {
  slotidx--;
  ms = slots->memslots + slotidx;
  ofs = find_next_bit(kvm_second_dirty_bitmap(ms), ms->npages, 0);
 }
 return ms->base_gfn + ofs;
}
