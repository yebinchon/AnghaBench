
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dmb () ;

__attribute__((used)) static void ipi_flush_tlb_a15_erratum(void *arg)
{
 dmb();
}
