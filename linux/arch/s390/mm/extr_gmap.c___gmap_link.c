
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
struct TYPE_2__ {int allow_gmap_hpage_1m; } ;
struct mm_struct {TYPE_1__ context; } ;
struct gmap {unsigned long* table; int asce; int guest_table_lock; int host_to_guest; struct mm_struct* mm; } ;
typedef int spinlock_t ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int BUG_ON (int ) ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long PMD_SHIFT ;
 int VM_BUG_ON (int ) ;
 int _ASCE_TYPE_MASK ;
 int _ASCE_TYPE_REGION1 ;
 int _ASCE_TYPE_REGION2 ;
 int _ASCE_TYPE_REGION3 ;
 unsigned long _REGION1_INDEX ;
 unsigned long _REGION1_MASK ;
 unsigned long _REGION1_SHIFT ;
 unsigned long _REGION2_ENTRY_EMPTY ;
 unsigned long _REGION2_INDEX ;
 unsigned long _REGION2_MASK ;
 unsigned long _REGION2_SHIFT ;
 unsigned long _REGION3_ENTRY_EMPTY ;
 unsigned long _REGION3_INDEX ;
 unsigned long _REGION3_MASK ;
 unsigned long _REGION3_SHIFT ;
 unsigned long _REGION_ENTRY_INVALID ;
 unsigned long _REGION_ENTRY_ORIGIN ;
 unsigned long _SEGMENT_ENTRY_EMPTY ;
 unsigned long _SEGMENT_ENTRY_GMAP_UC ;
 unsigned long _SEGMENT_ENTRY_HARDWARE_BITS ;
 unsigned long _SEGMENT_ENTRY_HARDWARE_BITS_LARGE ;
 unsigned long _SEGMENT_ENTRY_PROTECT ;
 unsigned long _SEGMENT_INDEX ;
 unsigned long _SEGMENT_SHIFT ;
 int __pmd (unsigned long) ;
 scalar_t__ gmap_alloc_table (struct gmap*,unsigned long*,unsigned long,unsigned long) ;
 int gmap_is_shadow (struct gmap*) ;
 int gmap_pmdp_xchg (struct gmap*,int *,int ,unsigned long) ;
 int p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_none (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 scalar_t__ pmd_large (int ) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 unsigned long pmd_val (int ) ;
 scalar_t__ pud_large (int ) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int radix_tree_insert (int *,unsigned long,unsigned long*) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int __gmap_link(struct gmap *gmap, unsigned long gaddr, unsigned long vmaddr)
{
 struct mm_struct *mm;
 unsigned long *table;
 spinlock_t *ptl;
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd;
 u64 unprot;
 int rc;

 BUG_ON(gmap_is_shadow(gmap));

 table = gmap->table;
 if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION1) {
  table += (gaddr & _REGION1_INDEX) >> _REGION1_SHIFT;
  if ((*table & _REGION_ENTRY_INVALID) &&
      gmap_alloc_table(gmap, table, _REGION2_ENTRY_EMPTY,
         gaddr & _REGION1_MASK))
   return -ENOMEM;
  table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
 }
 if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION2) {
  table += (gaddr & _REGION2_INDEX) >> _REGION2_SHIFT;
  if ((*table & _REGION_ENTRY_INVALID) &&
      gmap_alloc_table(gmap, table, _REGION3_ENTRY_EMPTY,
         gaddr & _REGION2_MASK))
   return -ENOMEM;
  table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
 }
 if ((gmap->asce & _ASCE_TYPE_MASK) >= _ASCE_TYPE_REGION3) {
  table += (gaddr & _REGION3_INDEX) >> _REGION3_SHIFT;
  if ((*table & _REGION_ENTRY_INVALID) &&
      gmap_alloc_table(gmap, table, _SEGMENT_ENTRY_EMPTY,
         gaddr & _REGION3_MASK))
   return -ENOMEM;
  table = (unsigned long *)(*table & _REGION_ENTRY_ORIGIN);
 }
 table += (gaddr & _SEGMENT_INDEX) >> _SEGMENT_SHIFT;

 mm = gmap->mm;
 pgd = pgd_offset(mm, vmaddr);
 VM_BUG_ON(pgd_none(*pgd));
 p4d = p4d_offset(pgd, vmaddr);
 VM_BUG_ON(p4d_none(*p4d));
 pud = pud_offset(p4d, vmaddr);
 VM_BUG_ON(pud_none(*pud));

 if (pud_large(*pud))
  return -EFAULT;
 pmd = pmd_offset(pud, vmaddr);
 VM_BUG_ON(pmd_none(*pmd));

 if (pmd_large(*pmd) && !gmap->mm->context.allow_gmap_hpage_1m)
  return -EFAULT;

 rc = radix_tree_preload(GFP_KERNEL);
 if (rc)
  return rc;
 ptl = pmd_lock(mm, pmd);
 spin_lock(&gmap->guest_table_lock);
 if (*table == _SEGMENT_ENTRY_EMPTY) {
  rc = radix_tree_insert(&gmap->host_to_guest,
           vmaddr >> PMD_SHIFT, table);
  if (!rc) {
   if (pmd_large(*pmd)) {
    *table = (pmd_val(*pmd) &
       _SEGMENT_ENTRY_HARDWARE_BITS_LARGE)
     | _SEGMENT_ENTRY_GMAP_UC;
   } else
    *table = pmd_val(*pmd) &
     _SEGMENT_ENTRY_HARDWARE_BITS;
  }
 } else if (*table & _SEGMENT_ENTRY_PROTECT &&
     !(pmd_val(*pmd) & _SEGMENT_ENTRY_PROTECT)) {
  unprot = (u64)*table;
  unprot &= ~_SEGMENT_ENTRY_PROTECT;
  unprot |= _SEGMENT_ENTRY_GMAP_UC;
  gmap_pmdp_xchg(gmap, (pmd_t *)table, __pmd(unprot), gaddr);
 }
 spin_unlock(&gmap->guest_table_lock);
 spin_unlock(ptl);
 radix_tree_preload_end();
 return rc;
}
