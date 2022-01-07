
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbentry {int bus_num; int dev_num; int vendor_id; int product_id; int product_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char*) ;
 struct usbentry* parse_devlist (int *) ;
 int strcasecmp (int ,char const*) ;

struct usbentry * find_device(int *bus, int *dev,
                              int *vid, int *pid,
                              const char *product)
{
 DIR *devs = opendir("/sys/bus/usb/devices");

 struct usbentry *e, *match = ((void*)0);

 if (!devs)
  return ((void*)0);

 while ((e = parse_devlist(devs)) != ((void*)0))
 {
  if ((bus && (e->bus_num == *bus) && (e->dev_num == *dev)) ||
   (vid && (e->vendor_id == *vid) && (e->product_id == *pid)) ||
   (product && !strcasecmp(e->product_name, product)))
  {
   match = e;
   break;
  }
 }

 closedir(devs);

 return match;
}
