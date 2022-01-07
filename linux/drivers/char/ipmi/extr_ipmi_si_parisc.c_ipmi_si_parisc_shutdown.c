
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_parisc_driver ;
 scalar_t__ parisc_registered ;
 int unregister_parisc_driver (int *) ;

void ipmi_si_parisc_shutdown(void)
{
 if (parisc_registered)
  unregister_parisc_driver(&ipmi_parisc_driver);
}
