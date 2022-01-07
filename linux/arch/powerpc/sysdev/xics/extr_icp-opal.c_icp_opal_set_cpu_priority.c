
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char DEFAULT_PRIORITY ;
 unsigned char LOWEST_PRIORITY ;
 int iosync () ;
 int opal_int_set_cppr (unsigned char) ;
 int xics_set_base_cppr (unsigned char) ;

__attribute__((used)) static void icp_opal_set_cpu_priority(unsigned char cppr)
{







 if (cppr >= DEFAULT_PRIORITY)
  cppr = LOWEST_PRIORITY;

 xics_set_base_cppr(cppr);
 opal_int_set_cppr(cppr);
 iosync();
}
