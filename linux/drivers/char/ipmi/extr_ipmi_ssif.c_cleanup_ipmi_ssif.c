
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int address_list; } ;


 int free_ssif_clients () ;
 int i2c_del_driver (TYPE_1__*) ;
 int initialized ;
 int ipmi_driver ;
 int kfree (int ) ;
 int platform_driver_unregister (int *) ;
 scalar_t__ platform_registered ;
 TYPE_1__ ssif_i2c_driver ;
 scalar_t__ ssif_trydmi ;

__attribute__((used)) static void cleanup_ipmi_ssif(void)
{
 if (!initialized)
  return;

 initialized = 0;

 i2c_del_driver(&ssif_i2c_driver);

 kfree(ssif_i2c_driver.address_list);

 if (ssif_trydmi && platform_registered)
  platform_driver_unregister(&ipmi_driver);

 free_ssif_clients();
}
