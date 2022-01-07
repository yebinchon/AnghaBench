
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmi_parisc_driver ;
 int parisc_registered ;
 int register_parisc_driver (int *) ;

void ipmi_si_parisc_init(void)
{
 register_parisc_driver(&ipmi_parisc_driver);
 parisc_registered = 1;
}
