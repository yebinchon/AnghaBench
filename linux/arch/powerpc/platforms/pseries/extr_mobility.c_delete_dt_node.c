
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENOENT ;
 int be32_to_cpu (int ) ;
 int dlpar_detach_node (struct device_node*) ;
 struct device_node* of_find_node_by_phandle (int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int delete_dt_node(__be32 phandle)
{
 struct device_node *dn;

 dn = of_find_node_by_phandle(be32_to_cpu(phandle));
 if (!dn)
  return -ENOENT;

 dlpar_detach_node(dn);
 of_node_put(dn);
 return 0;
}
