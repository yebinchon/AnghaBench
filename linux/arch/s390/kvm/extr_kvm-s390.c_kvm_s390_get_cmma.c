
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u8 ;
struct kvm_s390_cmma_log {unsigned long start_gfn; unsigned long count; } ;
struct kvm_memslots {TYPE_1__* memslots; } ;
struct kvm_memory_slot {unsigned long base_gfn; unsigned long npages; } ;
struct TYPE_4__ {int cmma_dirty_pages; } ;
struct kvm {int mm; TYPE_2__ arch; } ;
struct TYPE_3__ {unsigned long base_gfn; unsigned long npages; } ;


 unsigned long KVM_S390_MAX_BIT_DISTANCE ;
 int atomic64_dec (int *) ;
 scalar_t__ get_pgste (int ,unsigned long,unsigned long*) ;
 unsigned long gfn_to_hva (struct kvm*,unsigned long) ;
 struct kvm_memory_slot* gfn_to_memslot (struct kvm*,unsigned long) ;
 scalar_t__ kvm_is_error_hva (unsigned long) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;
 unsigned long kvm_s390_next_dirty_cmma (struct kvm_memslots*,unsigned long) ;
 int kvm_second_dirty_bitmap (struct kvm_memory_slot*) ;
 scalar_t__ test_and_clear_bit (unsigned long,int ) ;

__attribute__((used)) static int kvm_s390_get_cmma(struct kvm *kvm, struct kvm_s390_cmma_log *args,
        u8 *res, unsigned long bufsize)
{
 unsigned long mem_end, cur_gfn, next_gfn, hva, pgstev;
 struct kvm_memslots *slots = kvm_memslots(kvm);
 struct kvm_memory_slot *ms;

 cur_gfn = kvm_s390_next_dirty_cmma(slots, args->start_gfn);
 ms = gfn_to_memslot(kvm, cur_gfn);
 args->count = 0;
 args->start_gfn = cur_gfn;
 if (!ms)
  return 0;
 next_gfn = kvm_s390_next_dirty_cmma(slots, cur_gfn + 1);
 mem_end = slots->memslots[0].base_gfn + slots->memslots[0].npages;

 while (args->count < bufsize) {
  hva = gfn_to_hva(kvm, cur_gfn);
  if (kvm_is_error_hva(hva))
   return 0;

  if (test_and_clear_bit(cur_gfn - ms->base_gfn, kvm_second_dirty_bitmap(ms)))
   atomic64_dec(&kvm->arch.cmma_dirty_pages);
  if (get_pgste(kvm->mm, hva, &pgstev) < 0)
   pgstev = 0;

  res[args->count++] = (pgstev >> 24) & 0x43;

  if (next_gfn > cur_gfn + KVM_S390_MAX_BIT_DISTANCE)
   return 0;

  if (cur_gfn == next_gfn)
   next_gfn = kvm_s390_next_dirty_cmma(slots, cur_gfn + 1);

  if ((next_gfn >= mem_end) ||
      (next_gfn - args->start_gfn >= bufsize))
   return 0;
  cur_gfn++;

  if (cur_gfn - ms->base_gfn >= ms->npages) {
   ms = gfn_to_memslot(kvm, cur_gfn);
   if (!ms)
    return 0;
  }
 }
 return 0;
}
