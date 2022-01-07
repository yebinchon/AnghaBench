
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int prom_getproplen (int ,char const*) ;

int prom_getbool(phandle node, const char *prop)
{
 int retval;

 retval = prom_getproplen(node, prop);
 if (retval == -1)
  return 0;
 return 1;
}
