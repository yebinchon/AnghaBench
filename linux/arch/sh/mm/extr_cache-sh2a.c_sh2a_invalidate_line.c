
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CACHE_PHYSADDR_MASK ;
 unsigned long SH_CACHE_ASSOC ;
 int __raw_writel (unsigned long,unsigned long) ;

__attribute__((used)) static void sh2a_invalidate_line(unsigned long cache_addr, unsigned long v)
{

 unsigned long addr = (v & 0x000007f0) | SH_CACHE_ASSOC;
 __raw_writel((addr & CACHE_PHYSADDR_MASK), cache_addr | addr);
}
