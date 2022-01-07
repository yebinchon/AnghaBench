
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {int dummy; } ;


 int strlen (char const*) ;
 struct userdiff_driver* userdiff_find_by_namelen (char const*,int) ;

struct userdiff_driver *userdiff_find_by_name(const char *name)
{
 int len = strlen(name);
 return userdiff_find_by_namelen(name, len);
}
