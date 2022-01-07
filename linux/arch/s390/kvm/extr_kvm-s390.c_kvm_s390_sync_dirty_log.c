
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {scalar_t__ base_gfn; scalar_t__ npages; } ;
struct TYPE_2__ {struct gmap* gmap; } ;
struct kvm {TYPE_1__ arch; } ;
struct gmap {int dummy; } ;
typedef scalar_t__ gfn_t ;


 int DECLARE_BITMAP (int ,int) ;
 int _PAGE_ENTRIES ;
 int bitmap ;
 int bitmap_zero (int ,int) ;
 int cond_resched () ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 unsigned long gfn_to_gpa (scalar_t__) ;
 unsigned long gfn_to_hva_memslot (struct kvm_memory_slot*,scalar_t__) ;
 int gmap_sync_dirty_log_pmd (struct gmap*,int ,unsigned long,unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 int mark_page_dirty (struct kvm*,scalar_t__) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static void kvm_s390_sync_dirty_log(struct kvm *kvm,
        struct kvm_memory_slot *memslot)
{
 int i;
 gfn_t cur_gfn, last_gfn;
 unsigned long gaddr, vmaddr;
 struct gmap *gmap = kvm->arch.gmap;
 DECLARE_BITMAP(bitmap, _PAGE_ENTRIES);


 cur_gfn = memslot->base_gfn;
 last_gfn = memslot->base_gfn + memslot->npages;
 for (; cur_gfn <= last_gfn; cur_gfn += _PAGE_ENTRIES) {
  gaddr = gfn_to_gpa(cur_gfn);
  vmaddr = gfn_to_hva_memslot(memslot, cur_gfn);
  if (kvm_is_error_hva(vmaddr))
   continue;

  bitmap_zero(bitmap, _PAGE_ENTRIES);
  gmap_sync_dirty_log_pmd(gmap, bitmap, gaddr, vmaddr);
  for (i = 0; i < _PAGE_ENTRIES; i++) {
   if (test_bit(i, bitmap))
    mark_page_dirty(kvm, cur_gfn + i);
  }

  if (fatal_signal_pending(current))
   return;
  cond_resched();
 }
}
