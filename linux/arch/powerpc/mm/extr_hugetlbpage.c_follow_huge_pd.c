
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int hugepd_t ;


 int FOLL_GET ;
 unsigned long PAGE_SHIFT ;
 int __migration_entry_wait (struct mm_struct*,int *,int *) ;
 int get_page (struct page*) ;
 int hugepd_shift (int ) ;
 int * hugepte_offset (int ,unsigned long,int) ;
 scalar_t__ is_hugetlb_entry_migration (int ) ;
 struct page* pte_page (int ) ;
 scalar_t__ pte_present (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct page *follow_huge_pd(struct vm_area_struct *vma,
       unsigned long address, hugepd_t hpd,
       int flags, int pdshift)
{
 pte_t *ptep;
 spinlock_t *ptl;
 struct page *page = ((void*)0);
 unsigned long mask;
 int shift = hugepd_shift(hpd);
 struct mm_struct *mm = vma->vm_mm;

retry:




 ptl = &mm->page_table_lock;
 spin_lock(ptl);

 ptep = hugepte_offset(hpd, address, pdshift);
 if (pte_present(*ptep)) {
  mask = (1UL << shift) - 1;
  page = pte_page(*ptep);
  page += ((address & mask) >> PAGE_SHIFT);
  if (flags & FOLL_GET)
   get_page(page);
 } else {
  if (is_hugetlb_entry_migration(*ptep)) {
   spin_unlock(ptl);
   __migration_entry_wait(mm, ptep, ptl);
   goto retry;
  }
 }
 spin_unlock(ptl);
 return page;
}
