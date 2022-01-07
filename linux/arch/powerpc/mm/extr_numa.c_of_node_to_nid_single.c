
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int NUMA_NO_NODE ;
 int associativity_to_nid (int const*) ;
 int * of_get_associativity (struct device_node*) ;

__attribute__((used)) static int of_node_to_nid_single(struct device_node *device)
{
 int nid = NUMA_NO_NODE;
 const __be32 *tmp;

 tmp = of_get_associativity(device);
 if (tmp)
  nid = associativity_to_nid(tmp);
 return nid;
}
