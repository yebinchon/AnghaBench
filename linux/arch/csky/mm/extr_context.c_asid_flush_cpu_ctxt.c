
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_tlb_invalid_all () ;

__attribute__((used)) static void asid_flush_cpu_ctxt(void)
{
 local_tlb_invalid_all();
}
