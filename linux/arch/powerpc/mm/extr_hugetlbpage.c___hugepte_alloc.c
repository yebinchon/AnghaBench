
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int hugepd_t ;


 int BUG_ON (unsigned long) ;
 int CONFIG_PPC_8xx ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HUGEPD_SHIFT_MASK ;
 scalar_t__ IS_ENABLED (int ) ;
 struct kmem_cache* PGT_CACHE (unsigned int) ;
 unsigned int PTE_INDEX_SIZE ;
 unsigned int PTE_T_ORDER ;
 int WARN_ONCE (int,char*) ;
 int __hugepd (int ) ;
 int hugepd_none (int ) ;
 int hugepd_populate (int *,int *,unsigned int) ;
 int * kmem_cache_alloc (struct kmem_cache*,int ) ;
 int kmem_cache_free (struct kmem_cache*,int *) ;
 int kmemleak_ignore (int *) ;
 int pgtable_gfp_flags (struct mm_struct*,int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __hugepte_alloc(struct mm_struct *mm, hugepd_t *hpdp,
      unsigned long address, unsigned int pdshift,
      unsigned int pshift, spinlock_t *ptl)
{
 struct kmem_cache *cachep;
 pte_t *new;
 int i;
 int num_hugepd;

 if (pshift >= pdshift) {
  cachep = PGT_CACHE(PTE_T_ORDER);
  num_hugepd = 1 << (pshift - pdshift);
 } else if (IS_ENABLED(CONFIG_PPC_8xx)) {
  cachep = PGT_CACHE(PTE_INDEX_SIZE);
  num_hugepd = 1;
 } else {
  cachep = PGT_CACHE(pdshift - pshift);
  num_hugepd = 1;
 }

 if (!cachep) {
  WARN_ONCE(1, "No page table cache created for hugetlb tables");
  return -ENOMEM;
 }

 new = kmem_cache_alloc(cachep, pgtable_gfp_flags(mm, GFP_KERNEL));

 BUG_ON(pshift > HUGEPD_SHIFT_MASK);
 BUG_ON((unsigned long)new & HUGEPD_SHIFT_MASK);

 if (!new)
  return -ENOMEM;






 smp_wmb();

 spin_lock(ptl);






 for (i = 0; i < num_hugepd; i++, hpdp++) {
  if (unlikely(!hugepd_none(*hpdp)))
   break;
  hugepd_populate(hpdp, new, pshift);
 }

 if (i < num_hugepd) {
  for (i = i - 1 ; i >= 0; i--, hpdp--)
   *hpdp = __hugepd(0);
  kmem_cache_free(cachep, new);
 } else {
  kmemleak_ignore(new);
 }
 spin_unlock(ptl);
 return 0;
}
