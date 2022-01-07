
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int devtype ;


 int MAX_PATH_LEN ;
 int MAX_PROP_LEN ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void *serial_get_stdout_devp(void)
{
 void *devp;
 char devtype[MAX_PROP_LEN];
 char path[MAX_PATH_LEN];

 devp = finddevice("/chosen");
 if (devp == ((void*)0))
  goto err_out;

 if (getprop(devp, "linux,stdout-path", path, MAX_PATH_LEN) > 0 ||
  getprop(devp, "stdout-path", path, MAX_PATH_LEN) > 0) {
  devp = finddevice(path);
  if (devp == ((void*)0))
   goto err_out;

  if ((getprop(devp, "device_type", devtype, sizeof(devtype)) > 0)
    && !strcmp(devtype, "serial"))
   return devp;
 }
err_out:
 return ((void*)0);
}
