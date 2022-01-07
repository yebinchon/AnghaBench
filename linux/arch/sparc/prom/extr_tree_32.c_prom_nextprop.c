
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 char* __prom_nextprop (scalar_t__,char*) ;

char *prom_nextprop(phandle node, char *oprop, char *buffer)
{
 if (node == 0 || (s32)node == -1)
  return "";

 return __prom_nextprop(node, oprop);
}
