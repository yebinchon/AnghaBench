
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int __vmclrmap (void*,int ) ;

void flush_tlb_one(unsigned long vaddr)
{
 __vmclrmap((void *)vaddr, PAGE_SIZE);
}
