
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CPU_DEVID_FAMILY ;
 unsigned long get_deviceid () ;

unsigned long identify_family(void)
{
 unsigned long deviceid;

 deviceid = get_deviceid();

 return deviceid & CPU_DEVID_FAMILY;
}
