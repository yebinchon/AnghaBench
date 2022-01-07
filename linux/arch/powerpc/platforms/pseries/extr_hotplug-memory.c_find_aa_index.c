
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct property {int* value; int length; } ;
struct device_node {int dummy; } ;


 int be32_to_cpu (int) ;
 int cpu_to_be32 (int) ;
 struct property* dlpar_clone_property (struct property*,int) ;
 scalar_t__ memcmp (int*,int const*,int) ;
 int memcpy (int*,int const*,int) ;
 int of_update_property (struct device_node*,struct property*) ;

__attribute__((used)) static bool find_aa_index(struct device_node *dr_node,
    struct property *ala_prop,
    const u32 *lmb_assoc, u32 *aa_index)
{
 u32 *assoc_arrays, new_prop_size;
 struct property *new_prop;
 int aa_arrays, aa_array_entries, aa_array_sz;
 int i, index;







 assoc_arrays = ala_prop->value;

 aa_arrays = be32_to_cpu(assoc_arrays[0]);
 aa_array_entries = be32_to_cpu(assoc_arrays[1]);
 aa_array_sz = aa_array_entries * sizeof(u32);

 for (i = 0; i < aa_arrays; i++) {
  index = (i * aa_array_entries) + 2;

  if (memcmp(&assoc_arrays[index], &lmb_assoc[1], aa_array_sz))
   continue;

  *aa_index = i;
  return 1;
 }

 new_prop_size = ala_prop->length + aa_array_sz;
 new_prop = dlpar_clone_property(ala_prop, new_prop_size);
 if (!new_prop)
  return 0;

 assoc_arrays = new_prop->value;


 assoc_arrays[0] = cpu_to_be32(aa_arrays + 1);


 index = aa_arrays * aa_array_entries + 2;
 memcpy(&assoc_arrays[index], &lmb_assoc[1], aa_array_sz);

 of_update_property(dr_node, new_prop);






 *aa_index = be32_to_cpu(assoc_arrays[0]) - 1;
 return 1;
}
