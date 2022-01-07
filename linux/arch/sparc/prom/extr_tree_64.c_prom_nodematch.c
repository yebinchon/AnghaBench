
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;
typedef int namebuf ;


 int prom_getproperty (int ,char*,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

int prom_nodematch(phandle node, const char *name)
{
 char namebuf[128];
 prom_getproperty(node, "name", namebuf, sizeof(namebuf));
 if (strcmp(namebuf, name) == 0)
  return 1;
 return 0;
}
