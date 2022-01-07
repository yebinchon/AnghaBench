
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEVICEID ;
 unsigned long* DEV_ID_REG ;
 char* prom_getenv (int ) ;
 unsigned long str2hex (char*) ;

unsigned long get_deviceid(void)
{
 char *deviceid = prom_getenv(DEVICEID);

 if (deviceid == ((void*)0))
  return *DEV_ID_REG;
 else
  return str2hex(deviceid);
}
