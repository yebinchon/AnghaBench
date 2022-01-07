
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CKSEG0ADDR (int ) ;
 int Page_Invalidate_T ;
 int cache_op (int ,unsigned long) ;
 scalar_t__ tc_pagesize ;
 unsigned long tcache_size ;
 int write_c0_taglo (int ) ;

__attribute__((used)) static void blast_rm7k_tcache(void)
{
 unsigned long start = CKSEG0ADDR(0);
 unsigned long end = start + tcache_size;

 write_c0_taglo(0);

 while (start < end) {
  cache_op(Page_Invalidate_T, start);
  start += tc_pagesize;
 }
}
