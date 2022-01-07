
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int ENOMEM ;
 int READ_ONCE (int ) ;
 scalar_t__ copy_pud (int *,int *,unsigned long,unsigned long) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int * pgd_offset_raw (int *,unsigned long) ;

__attribute__((used)) static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
       unsigned long end)
{
 unsigned long next;
 unsigned long addr = start;
 pgd_t *src_pgdp = pgd_offset_k(start);

 dst_pgdp = pgd_offset_raw(dst_pgdp, start);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none(READ_ONCE(*src_pgdp)))
   continue;
  if (copy_pud(dst_pgdp, src_pgdp, addr, next))
   return -ENOMEM;
 } while (dst_pgdp++, src_pgdp++, addr = next, addr != end);

 return 0;
}
