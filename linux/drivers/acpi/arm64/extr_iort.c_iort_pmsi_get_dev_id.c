
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct acpi_iort_node {int mapping_count; } ;


 int ENODEV ;
 int IORT_MSI_TYPE ;
 struct acpi_iort_node* iort_find_dev_node (struct device*) ;
 int iort_get_id_mapping_index (struct acpi_iort_node*) ;
 scalar_t__ iort_node_get_id (struct acpi_iort_node*,int *,int) ;
 scalar_t__ iort_node_map_platform_id (struct acpi_iort_node*,int *,int ,int) ;

int iort_pmsi_get_dev_id(struct device *dev, u32 *dev_id)
{
 int i, index;
 struct acpi_iort_node *node;

 node = iort_find_dev_node(dev);
 if (!node)
  return -ENODEV;

 index = iort_get_id_mapping_index(node);

 if (index >= 0) {
  if (iort_node_get_id(node, dev_id, index))
   return 0;
 } else {
  for (i = 0; i < node->mapping_count; i++) {
   if (iort_node_map_platform_id(node, dev_id,
            IORT_MSI_TYPE, i))
    return 0;
  }
 }

 return -ENODEV;
}
