
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_nmicallback (int ,int *) ;
 int raw_smp_processor_id () ;

void kgdb_call_nmi_hook(void *ignored)
{

 kgdb_nmicallback(raw_smp_processor_id(), ((void*)0));
}
