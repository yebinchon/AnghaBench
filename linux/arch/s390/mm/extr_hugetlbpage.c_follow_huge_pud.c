
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;


 int FOLL_GET ;
 unsigned long PAGE_SHIFT ;
 unsigned long PUD_MASK ;
 struct page* pud_page (int ) ;

struct page *
follow_huge_pud(struct mm_struct *mm, unsigned long address,
  pud_t *pud, int flags)
{
 if (flags & FOLL_GET)
  return ((void*)0);

 return pud_page(*pud) + ((address & ~PUD_MASK) >> PAGE_SHIFT);
}
