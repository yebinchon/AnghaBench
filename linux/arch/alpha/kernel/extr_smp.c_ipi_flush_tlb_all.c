
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tbia () ;

__attribute__((used)) static void
ipi_flush_tlb_all(void *ignored)
{
 tbia();
}
