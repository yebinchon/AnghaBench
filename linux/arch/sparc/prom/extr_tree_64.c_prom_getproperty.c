
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle ;


 int p1275_cmd_direct (unsigned long*) ;
 scalar_t__ prom_getprop_name ;
 int prom_getproplen (scalar_t__,char const*) ;

int prom_getproperty(phandle node, const char *prop,
       char *buffer, int bufsize)
{
 unsigned long args[8];
 int plen;

 plen = prom_getproplen(node, prop);
 if ((plen > bufsize) || (plen == 0) || (plen == -1))
  return -1;

 args[0] = (unsigned long) prom_getprop_name;
 args[1] = 4;
 args[2] = 1;
 args[3] = (unsigned int) node;
 args[4] = (unsigned long) prop;
 args[5] = (unsigned long) buffer;
 args[6] = bufsize;
 args[7] = (unsigned long) -1;

 p1275_cmd_direct(args);

 return (int) args[7];
}
