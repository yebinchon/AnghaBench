
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * driverinfo_artlist ;
 int trap_R_RegisterShaderNoMip (int ) ;

void DriverInfo_Cache( void )
{
 int i;


 for (i=0; ;i++)
 {
  if (!driverinfo_artlist[i])
   break;
  trap_R_RegisterShaderNoMip(driverinfo_artlist[i]);
 }
}
