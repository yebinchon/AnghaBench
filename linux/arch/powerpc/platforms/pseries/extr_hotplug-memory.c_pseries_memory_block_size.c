
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be64 ;


 unsigned int MIN_MEMORY_BLOCK_SIZE ;
 unsigned int be64_to_cpup (int const*) ;
 scalar_t__ machine_is (int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int pseries ;
 unsigned int resource_size (struct resource*) ;
 int sprintf (char*,char*,unsigned int) ;

unsigned long pseries_memory_block_size(void)
{
 struct device_node *np;
 unsigned int memblock_size = MIN_MEMORY_BLOCK_SIZE;
 struct resource r;

 np = of_find_node_by_path("/ibm,dynamic-reconfiguration-memory");
 if (np) {
  const __be64 *size;

  size = of_get_property(np, "ibm,lmb-size", ((void*)0));
  if (size)
   memblock_size = be64_to_cpup(size);
  of_node_put(np);
 } else if (machine_is(pseries)) {

  unsigned int memzero_size = 0;

  np = of_find_node_by_path("/memory@0");
  if (np) {
   if (!of_address_to_resource(np, 0, &r))
    memzero_size = resource_size(&r);
   of_node_put(np);
  }

  if (memzero_size) {



   char buf[64];

   sprintf(buf, "/memory@%x", memzero_size);
   np = of_find_node_by_path(buf);
   if (np) {
    if (!of_address_to_resource(np, 0, &r))
     memblock_size = resource_size(&r);
    of_node_put(np);
   }
  }
 }
 return memblock_size;
}
