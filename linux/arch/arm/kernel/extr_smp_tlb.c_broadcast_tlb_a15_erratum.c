
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int erratum_a15_798181 () ;
 int ipi_flush_tlb_a15_erratum ;
 int smp_call_function (int ,int *,int) ;

__attribute__((used)) static void broadcast_tlb_a15_erratum(void)
{
 if (!erratum_a15_798181())
  return;

 smp_call_function(ipi_flush_tlb_a15_erratum, ((void*)0), 1);
}
