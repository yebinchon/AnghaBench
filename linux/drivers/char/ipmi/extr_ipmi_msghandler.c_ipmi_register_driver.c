
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int driver; } ;


 int driver_register (int *) ;
 int drvregistered ;
 TYPE_1__ ipmidriver ;
 int pr_err (char*) ;

__attribute__((used)) static int ipmi_register_driver(void)
{
 int rv;

 if (drvregistered)
  return 0;

 rv = driver_register(&ipmidriver.driver);
 if (rv)
  pr_err("Could not register IPMI driver\n");
 else
  drvregistered = 1;
 return rv;
}
