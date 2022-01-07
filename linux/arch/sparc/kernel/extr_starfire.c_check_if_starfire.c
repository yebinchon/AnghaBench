
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 scalar_t__ prom_finddevice (char*) ;
 int this_is_starfire ;

void check_if_starfire(void)
{
 phandle ssnode = prom_finddevice("/ssp-serial");
 if (ssnode != 0 && (s32)ssnode != -1)
  this_is_starfire = 1;
}
