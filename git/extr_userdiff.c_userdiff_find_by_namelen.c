
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {int * name; } ;


 int ARRAY_SIZE (struct userdiff_driver*) ;
 struct userdiff_driver* builtin_drivers ;
 struct userdiff_driver* drivers ;
 int ndrivers ;
 int strncmp (int *,char const*,int) ;

__attribute__((used)) static struct userdiff_driver *userdiff_find_by_namelen(const char *k, int len)
{
 int i;
 for (i = 0; i < ndrivers; i++) {
  struct userdiff_driver *drv = drivers + i;
  if (!strncmp(drv->name, k, len) && !drv->name[len])
   return drv;
 }
 for (i = 0; i < ARRAY_SIZE(builtin_drivers); i++) {
  struct userdiff_driver *drv = builtin_drivers + i;
  if (!strncmp(drv->name, k, len) && !drv->name[len])
   return drv;
 }
 return ((void*)0);
}
