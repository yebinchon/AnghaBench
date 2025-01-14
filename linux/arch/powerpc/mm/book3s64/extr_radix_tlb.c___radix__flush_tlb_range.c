
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {unsigned int shift; } ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long MMU_NO_CONTEXT ;
 size_t MMU_PAGE_1G ;
 size_t MMU_PAGE_2M ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 unsigned long PUD_MASK ;
 unsigned long PUD_SIZE ;
 int RIC_FLUSH_ALL ;
 int RIC_FLUSH_TLB ;
 unsigned long TLB_FLUSH_ALL ;
 int __tlbie_va_range (unsigned long,unsigned long,unsigned long,unsigned long,size_t) ;
 int __tlbiel_va_range (unsigned long,unsigned long,unsigned long,unsigned long,size_t) ;
 int _tlbie_pid (unsigned long,int ) ;
 int _tlbiel_pid (unsigned long,int ) ;
 int _tlbiel_pid_multicast (struct mm_struct*,unsigned long,int ) ;
 int _tlbiel_va_range_multicast (struct mm_struct*,unsigned long,unsigned long,unsigned long,unsigned long,size_t,int) ;
 scalar_t__ cputlb_use_tlbie () ;
 int exit_flush_lazy_tlbs (struct mm_struct*) ;
 int mm_is_singlethreaded (struct mm_struct*) ;
 int mm_is_thread_local (struct mm_struct*) ;
 scalar_t__ mm_needs_flush_escalation (struct mm_struct*) ;
 TYPE_2__* mmu_psize_defs ;
 size_t mmu_virtual_psize ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_mb () ;
 unsigned long tlb_local_single_page_flush_ceiling ;
 unsigned long tlb_single_page_flush_ceiling ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void __radix__flush_tlb_range(struct mm_struct *mm,
     unsigned long start, unsigned long end,
     bool flush_all_sizes)

{
 unsigned long pid;
 unsigned int page_shift = mmu_psize_defs[mmu_virtual_psize].shift;
 unsigned long page_size = 1UL << page_shift;
 unsigned long nr_pages = (end - start) >> page_shift;
 bool local, full;

 pid = mm->context.id;
 if (unlikely(pid == MMU_NO_CONTEXT))
  return;

 preempt_disable();
 smp_mb();
 if (!mm_is_thread_local(mm)) {
  if (unlikely(mm_is_singlethreaded(mm))) {
   if (end != TLB_FLUSH_ALL) {
    exit_flush_lazy_tlbs(mm);
    goto is_local;
   }
  }
  local = 0;
  full = (end == TLB_FLUSH_ALL ||
    nr_pages > tlb_single_page_flush_ceiling);
 } else {
is_local:
  local = 1;
  full = (end == TLB_FLUSH_ALL ||
    nr_pages > tlb_local_single_page_flush_ceiling);
 }

 if (full) {
  if (local) {
   _tlbiel_pid(pid, RIC_FLUSH_TLB);
  } else {
   if (cputlb_use_tlbie()) {
    if (mm_needs_flush_escalation(mm))
     _tlbie_pid(pid, RIC_FLUSH_ALL);
    else
     _tlbie_pid(pid, RIC_FLUSH_TLB);
   } else {
    _tlbiel_pid_multicast(mm, pid, RIC_FLUSH_TLB);
   }
  }
 } else {
  bool hflush = flush_all_sizes;
  bool gflush = flush_all_sizes;
  unsigned long hstart, hend;
  unsigned long gstart, gend;

  if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE))
   hflush = 1;

  if (hflush) {
   hstart = (start + PMD_SIZE - 1) & PMD_MASK;
   hend = end & PMD_MASK;
   if (hstart == hend)
    hflush = 0;
  }

  if (gflush) {
   gstart = (start + PUD_SIZE - 1) & PUD_MASK;
   gend = end & PUD_MASK;
   if (gstart == gend)
    gflush = 0;
  }

  if (local) {
   asm volatile("ptesync": : :"memory");
   __tlbiel_va_range(start, end, pid, page_size, mmu_virtual_psize);
   if (hflush)
    __tlbiel_va_range(hstart, hend, pid,
      PMD_SIZE, MMU_PAGE_2M);
   if (gflush)
    __tlbiel_va_range(gstart, gend, pid,
      PUD_SIZE, MMU_PAGE_1G);
   asm volatile("ptesync": : :"memory");
  } else if (cputlb_use_tlbie()) {
   asm volatile("ptesync": : :"memory");
   __tlbie_va_range(start, end, pid, page_size, mmu_virtual_psize);
   if (hflush)
    __tlbie_va_range(hstart, hend, pid,
      PMD_SIZE, MMU_PAGE_2M);
   if (gflush)
    __tlbie_va_range(gstart, gend, pid,
      PUD_SIZE, MMU_PAGE_1G);

   asm volatile("eieio; tlbsync; ptesync": : :"memory");
  } else {
   _tlbiel_va_range_multicast(mm,
     start, end, pid, page_size, mmu_virtual_psize, 0);
   if (hflush)
    _tlbiel_va_range_multicast(mm,
     hstart, hend, pid, PMD_SIZE, MMU_PAGE_2M, 0);
   if (gflush)
    _tlbiel_va_range_multicast(mm,
     gstart, gend, pid, PUD_SIZE, MMU_PAGE_1G, 0);
  }
 }
 preempt_enable();
}
