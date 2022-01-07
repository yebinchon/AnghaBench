
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_one_ipi ;
 int smp_on_each_tlb (int ,void*) ;

void flush_tlb_one(unsigned long vaddr)
{
 smp_on_each_tlb(flush_tlb_one_ipi, (void *) vaddr);
}
