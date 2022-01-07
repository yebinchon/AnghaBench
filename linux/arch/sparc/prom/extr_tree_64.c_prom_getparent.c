
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef scalar_t__ phandle ;


 scalar_t__ prom_node_to_node (char*,scalar_t__) ;

inline phandle prom_getparent(phandle node)
{
 phandle cnode;

 if ((s32)node == -1)
  return 0;
 cnode = prom_node_to_node("parent", node);
 if ((s32)cnode == -1)
  return 0;
 return cnode;
}
