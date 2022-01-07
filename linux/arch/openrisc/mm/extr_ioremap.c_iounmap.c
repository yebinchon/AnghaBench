
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIXADDR_START ;
 unsigned long PAGE_MASK ;
 int flush_tlb_all () ;
 scalar_t__ unlikely (int) ;
 void vfree (void*) ;

void iounmap(void *addr)
{



 if (unlikely((unsigned long)addr > FIXADDR_START)) {
  flush_tlb_all();
  return;
 }

 return vfree((void *)(PAGE_MASK & (unsigned long)addr));
}
