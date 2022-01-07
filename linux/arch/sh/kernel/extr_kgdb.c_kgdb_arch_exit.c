
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_notifier ;
 int unregister_die_notifier (int *) ;

void kgdb_arch_exit(void)
{
 unregister_die_notifier(&kgdb_notifier);
}
