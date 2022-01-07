
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_notifier ;
 int register_die_notifier (int *) ;

int kgdb_arch_init(void)
{
 return register_die_notifier(&kgdb_notifier);
}
