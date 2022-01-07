
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PMD_SECT_RDONLY ;
 int READ_ONCE (int ) ;
 int __pmd (int) ;
 scalar_t__ copy_pte (int *,int *,unsigned long,unsigned long) ;
 scalar_t__ get_safe_page (int ) ;
 int init_mm ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_table (int ) ;
 int pmd_val (int ) ;
 scalar_t__ pud_none (int ) ;
 int pud_populate (int *,int *,int *) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
      unsigned long end)
{
 pmd_t *src_pmdp;
 pmd_t *dst_pmdp;
 unsigned long next;
 unsigned long addr = start;

 if (pud_none(READ_ONCE(*dst_pudp))) {
  dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
  if (!dst_pmdp)
   return -ENOMEM;
  pud_populate(&init_mm, dst_pudp, dst_pmdp);
 }
 dst_pmdp = pmd_offset(dst_pudp, start);

 src_pmdp = pmd_offset(src_pudp, start);
 do {
  pmd_t pmd = READ_ONCE(*src_pmdp);

  next = pmd_addr_end(addr, end);
  if (pmd_none(pmd))
   continue;
  if (pmd_table(pmd)) {
   if (copy_pte(dst_pmdp, src_pmdp, addr, next))
    return -ENOMEM;
  } else {
   set_pmd(dst_pmdp,
    __pmd(pmd_val(pmd) & ~PMD_SECT_RDONLY));
  }
 } while (dst_pmdp++, src_pmdp++, addr = next, addr != end);

 return 0;
}
