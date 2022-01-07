
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tlb_invalid_all () ;

void flush_tlb_all(void)
{
 tlb_invalid_all();
}
