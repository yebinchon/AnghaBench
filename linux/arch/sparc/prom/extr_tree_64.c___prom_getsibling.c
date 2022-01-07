
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle ;


 int prom_node_to_node (int ,int ) ;
 int prom_peer_name ;

inline phandle __prom_getsibling(phandle node)
{
 return prom_node_to_node(prom_peer_name, node);
}
