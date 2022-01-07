
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int prom_node_to_node (char*,int ) ;

inline phandle __prom_getchild(phandle node)
{
 return prom_node_to_node("child", node);
}
