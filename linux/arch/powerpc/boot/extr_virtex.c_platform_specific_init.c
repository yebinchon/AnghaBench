
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devtype ;


 int MAX_PATH_LEN ;
 int MAX_PROP_LEN ;
 scalar_t__ dt_is_compatible (void*,char*) ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,char*,int) ;
 int strcmp (char*,char*) ;
 int virtex_ns16550_console_init (void*) ;

int platform_specific_init(void)
{
 void *devp;
 char devtype[MAX_PROP_LEN];
 char path[MAX_PATH_LEN];

 devp = finddevice("/chosen");
 if (devp == ((void*)0))
  return -1;

 if (getprop(devp, "linux,stdout-path", path, MAX_PATH_LEN) > 0) {
  devp = finddevice(path);
  if (devp == ((void*)0))
   return -1;

  if ((getprop(devp, "device_type", devtype, sizeof(devtype)) > 0)
    && !strcmp(devtype, "serial")
    && (dt_is_compatible(devp, "ns16550")))
    virtex_ns16550_console_init(devp);
 }
 return 0;
}
