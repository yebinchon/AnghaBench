
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_TLB ;
 int __tlbie_va (unsigned long,unsigned long,unsigned long,int ) ;
 int fixup_tlbie_va_range (unsigned long,unsigned long,unsigned long) ;
 unsigned long mmu_get_ap (unsigned long) ;

__attribute__((used)) static inline void __tlbie_va_range(unsigned long start, unsigned long end,
        unsigned long pid, unsigned long page_size,
        unsigned long psize)
{
 unsigned long addr;
 unsigned long ap = mmu_get_ap(psize);

 for (addr = start; addr < end; addr += page_size)
  __tlbie_va(addr, pid, ap, RIC_FLUSH_TLB);

 fixup_tlbie_va_range(addr - page_size, pid, ap);
}
