
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 scalar_t__ __prom_getchild (scalar_t__) ;

phandle prom_getchild(phandle node)
{
 phandle cnode;

 if ((s32)node == -1)
  return 0;
 cnode = __prom_getchild(node);
 if ((s32)cnode == -1)
  return 0;
 return cnode;
}
