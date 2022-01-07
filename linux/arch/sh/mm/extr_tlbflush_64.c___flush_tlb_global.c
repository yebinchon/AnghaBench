
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_tlb_all () ;

void __flush_tlb_global(void)
{
 flush_tlb_all();
}
