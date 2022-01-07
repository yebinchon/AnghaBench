
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct acpi_iort_node {int dummy; } ;


 int IORT_MSI_TYPE ;
 struct acpi_iort_node* iort_find_dev_node (struct device*) ;
 int iort_node_map_id (struct acpi_iort_node*,int ,int *,int ) ;

u32 iort_msi_map_rid(struct device *dev, u32 req_id)
{
 struct acpi_iort_node *node;
 u32 dev_id;

 node = iort_find_dev_node(dev);
 if (!node)
  return req_id;

 iort_node_map_id(node, req_id, &dev_id, IORT_MSI_TYPE);
 return dev_id;
}
