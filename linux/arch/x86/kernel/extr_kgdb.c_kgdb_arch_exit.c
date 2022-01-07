
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pev; } ;


 int NMI_LOCAL ;
 int NMI_UNKNOWN ;
 TYPE_1__* breakinfo ;
 int kgdb_notifier ;
 int unregister_die_notifier (int *) ;
 int unregister_nmi_handler (int ,char*) ;
 int unregister_wide_hw_breakpoint (int *) ;

void kgdb_arch_exit(void)
{
 int i;
 for (i = 0; i < 4; i++) {
  if (breakinfo[i].pev) {
   unregister_wide_hw_breakpoint(breakinfo[i].pev);
   breakinfo[i].pev = ((void*)0);
  }
 }
 unregister_nmi_handler(NMI_UNKNOWN, "kgdb");
 unregister_nmi_handler(NMI_LOCAL, "kgdb");
 unregister_die_notifier(&kgdb_notifier);
}
