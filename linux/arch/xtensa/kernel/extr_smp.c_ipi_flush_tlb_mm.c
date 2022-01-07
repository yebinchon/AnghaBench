
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_tlb_mm (void*) ;

__attribute__((used)) static void ipi_flush_tlb_mm(void *arg)
{
 local_flush_tlb_mm(arg);
}
