
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
struct assoc_arrays {int n_arrays; int array_sz; int const* arrays; } ;
typedef int __be32 ;


 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 void* of_read_number (int ,int) ;

__attribute__((used)) static int of_get_assoc_arrays(struct assoc_arrays *aa)
{
 struct device_node *memory;
 const __be32 *prop;
 u32 len;

 memory = of_find_node_by_path("/ibm,dynamic-reconfiguration-memory");
 if (!memory)
  return -1;

 prop = of_get_property(memory, "ibm,associativity-lookup-arrays", &len);
 if (!prop || len < 2 * sizeof(unsigned int)) {
  of_node_put(memory);
  return -1;
 }

 aa->n_arrays = of_read_number(prop++, 1);
 aa->array_sz = of_read_number(prop++, 1);

 of_node_put(memory);




 if (len < (aa->n_arrays * aa->array_sz + 2) * sizeof(unsigned int))
  return -1;

 aa->arrays = prop;
 return 0;
}
