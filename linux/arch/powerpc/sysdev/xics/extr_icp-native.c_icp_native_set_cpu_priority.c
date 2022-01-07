
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int icp_native_set_cppr (unsigned char) ;
 int iosync () ;
 int xics_set_base_cppr (unsigned char) ;

__attribute__((used)) static void icp_native_set_cpu_priority(unsigned char cppr)
{
 xics_set_base_cppr(cppr);
 icp_native_set_cppr(cppr);
 iosync();
}
