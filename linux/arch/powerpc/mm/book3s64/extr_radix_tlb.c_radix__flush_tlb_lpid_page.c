
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_TLB ;
 int _tlbie_lpid_va (unsigned long,unsigned int,int,int ) ;
 int radix_get_mmu_psize (unsigned long) ;

void radix__flush_tlb_lpid_page(unsigned int lpid,
     unsigned long addr,
     unsigned long page_size)
{
 int psize = radix_get_mmu_psize(page_size);

 _tlbie_lpid_va(addr, lpid, psize, RIC_FLUSH_TLB);
}
