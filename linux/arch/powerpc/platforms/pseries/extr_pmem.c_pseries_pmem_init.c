
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int drc_pmem_match ;
 int of_find_node_by_type (int *,char*) ;
 int of_platform_bus_probe (int ,int ,int *) ;
 int pmem_node ;

__attribute__((used)) static int pseries_pmem_init(void)
{
 pmem_node = of_find_node_by_type(((void*)0), "ibm,persistent-memory");
 if (!pmem_node)
  return 0;






 of_platform_bus_probe(pmem_node, drc_pmem_match, ((void*)0));

 return 0;
}
