
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pgd_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PMD_SECT_RDONLY ;
 int READ_ONCE (int ) ;
 int __pud (int) ;
 scalar_t__ copy_pmd (int *,int *,unsigned long,unsigned long) ;
 scalar_t__ get_safe_page (int ) ;
 int init_mm ;
 scalar_t__ pgd_none (int ) ;
 int pgd_populate (int *,int *,int *) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ pud_table (int ) ;
 int pud_val (int ) ;
 int set_pud (int *,int ) ;

__attribute__((used)) static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
      unsigned long end)
{
 pud_t *dst_pudp;
 pud_t *src_pudp;
 unsigned long next;
 unsigned long addr = start;

 if (pgd_none(READ_ONCE(*dst_pgdp))) {
  dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
  if (!dst_pudp)
   return -ENOMEM;
  pgd_populate(&init_mm, dst_pgdp, dst_pudp);
 }
 dst_pudp = pud_offset(dst_pgdp, start);

 src_pudp = pud_offset(src_pgdp, start);
 do {
  pud_t pud = READ_ONCE(*src_pudp);

  next = pud_addr_end(addr, end);
  if (pud_none(pud))
   continue;
  if (pud_table(pud)) {
   if (copy_pmd(dst_pudp, src_pudp, addr, next))
    return -ENOMEM;
  } else {
   set_pud(dst_pudp,
    __pud(pud_val(pud) & ~PMD_SECT_RDONLY));
  }
 } while (dst_pudp++, src_pudp++, addr = next, addr != end);

 return 0;
}
