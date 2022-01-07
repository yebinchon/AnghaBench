
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle ;


 int p1275_cmd_direct (unsigned long*) ;

int prom_getproplen(phandle node, const char *prop)
{
 unsigned long args[6];

 if (!node || !prop)
  return -1;

 args[0] = (unsigned long) "getproplen";
 args[1] = 2;
 args[2] = 1;
 args[3] = (unsigned int) node;
 args[4] = (unsigned long) prop;
 args[5] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return (int) args[5];
}
