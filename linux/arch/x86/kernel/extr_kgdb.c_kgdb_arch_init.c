
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMI_LOCAL ;
 int NMI_UNKNOWN ;
 int kgdb_nmi_handler ;
 int kgdb_notifier ;
 int register_die_notifier (int *) ;
 int register_nmi_handler (int ,int ,int ,char*) ;
 int unregister_die_notifier (int *) ;
 int unregister_nmi_handler (int ,char*) ;

int kgdb_arch_init(void)
{
 int retval;

 retval = register_die_notifier(&kgdb_notifier);
 if (retval)
  goto out;

 retval = register_nmi_handler(NMI_LOCAL, kgdb_nmi_handler,
     0, "kgdb");
 if (retval)
  goto out1;

 retval = register_nmi_handler(NMI_UNKNOWN, kgdb_nmi_handler,
     0, "kgdb");

 if (retval)
  goto out2;

 return retval;

out2:
 unregister_nmi_handler(NMI_LOCAL, "kgdb");
out1:
 unregister_die_notifier(&kgdb_notifier);
out:
 return retval;
}
