
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_tlb_one (unsigned long) ;

__attribute__((used)) static void flush_tlb_one_ipi(void *info)
{
 unsigned long vaddr = (unsigned long) info;

 local_flush_tlb_one(vaddr);
}
