
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 scalar_t__ __prom_getsibling (scalar_t__) ;

phandle prom_getsibling(phandle node)
{
 phandle sibnode;

 if ((s32)node == -1)
  return 0;
 sibnode = __prom_getsibling(node);
 if ((s32)sibnode == -1)
  return 0;

 return sibnode;
}
