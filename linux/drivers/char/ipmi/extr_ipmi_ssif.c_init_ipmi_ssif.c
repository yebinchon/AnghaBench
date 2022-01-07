
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int acpi_match_table; } ;
struct TYPE_5__ {int address_list; TYPE_1__ driver; } ;


 int ACPI_PTR (int ) ;
 int SI_HARDCODED ;
 int * adapter_name ;
 int* addr ;
 int * dbg ;
 int i2c_add_driver (TYPE_2__*) ;
 int initialized ;
 int ipmi_driver ;
 int new_ssif_client (int,int ,int ,int ,int ,int *) ;
 int num_addrs ;
 int platform_driver_register (int *) ;
 int platform_registered ;
 int pr_err (char*,int) ;
 int pr_info (char*) ;
 int * slave_addrs ;
 int ssif_acpi_match ;
 int ssif_address_list () ;
 TYPE_2__ ssif_i2c_driver ;
 scalar_t__ ssif_tryacpi ;
 scalar_t__ ssif_trydmi ;

__attribute__((used)) static int init_ipmi_ssif(void)
{
 int i;
 int rv;

 if (initialized)
  return 0;

 pr_info("IPMI SSIF Interface driver\n");


 for (i = 0; i < num_addrs; i++) {
  rv = new_ssif_client(addr[i], adapter_name[i],
         dbg[i], slave_addrs[i],
         SI_HARDCODED, ((void*)0));
  if (rv)
   pr_err("Couldn't add hardcoded device at addr 0x%x\n",
          addr[i]);
 }

 if (ssif_tryacpi)
  ssif_i2c_driver.driver.acpi_match_table =
   ACPI_PTR(ssif_acpi_match);

 if (ssif_trydmi) {
  rv = platform_driver_register(&ipmi_driver);
  if (rv)
   pr_err("Unable to register driver: %d\n", rv);
  else
   platform_registered = 1;
 }

 ssif_i2c_driver.address_list = ssif_address_list();

 rv = i2c_add_driver(&ssif_i2c_driver);
 if (!rv)
  initialized = 1;

 return rv;
}
