
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sparc64_ctx_val; } ;
struct mm_struct {TYPE_1__ context; } ;


 int CTX_NR_BITS ;
 int CTX_NR_MASK ;
 unsigned long CTX_PGSZ_MASK ;
 int CTX_VALID (TYPE_1__) ;
 int CTX_VERSION_MASK ;
 int cpumask_clear (int ) ;
 int ctx_alloc_lock ;
 unsigned long find_next_zero_bit (unsigned long*,unsigned long,int) ;
 int mm_cpumask (struct mm_struct*) ;
 unsigned long* mmu_context_bmap ;
 int mmu_context_wrap () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tlb_context_cache ;
 scalar_t__ unlikely (int ) ;

void get_new_mmu_context(struct mm_struct *mm)
{
 unsigned long ctx, new_ctx;
 unsigned long orig_pgsz_bits;

 spin_lock(&ctx_alloc_lock);
retry:

 if (unlikely(CTX_VALID(mm->context)))
  goto out;
 orig_pgsz_bits = (mm->context.sparc64_ctx_val & CTX_PGSZ_MASK);
 ctx = (tlb_context_cache + 1) & CTX_NR_MASK;
 new_ctx = find_next_zero_bit(mmu_context_bmap, 1 << CTX_NR_BITS, ctx);
 if (new_ctx >= (1 << CTX_NR_BITS)) {
  new_ctx = find_next_zero_bit(mmu_context_bmap, ctx, 1);
  if (new_ctx >= ctx) {
   mmu_context_wrap();
   goto retry;
  }
 }
 if (mm->context.sparc64_ctx_val)
  cpumask_clear(mm_cpumask(mm));
 mmu_context_bmap[new_ctx>>6] |= (1UL << (new_ctx & 63));
 new_ctx |= (tlb_context_cache & CTX_VERSION_MASK);
 tlb_context_cache = new_ctx;
 mm->context.sparc64_ctx_val = new_ctx | orig_pgsz_bits;
out:
 spin_unlock(&ctx_alloc_lock);
}
