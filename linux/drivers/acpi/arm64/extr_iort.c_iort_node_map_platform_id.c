
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_iort_node {int type; } ;


 int IORT_TYPE_MASK (int ) ;
 struct acpi_iort_node* iort_node_get_id (struct acpi_iort_node*,int *,int) ;
 struct acpi_iort_node* iort_node_map_id (struct acpi_iort_node*,int ,int *,int) ;

__attribute__((used)) static struct acpi_iort_node *iort_node_map_platform_id(
  struct acpi_iort_node *node, u32 *id_out, u8 type_mask,
  int index)
{
 struct acpi_iort_node *parent;
 u32 id;


 parent = iort_node_get_id(node, &id, index);
 if (!parent)
  return ((void*)0);







 if (!(IORT_TYPE_MASK(parent->type) & type_mask))
  parent = iort_node_map_id(parent, id, id_out, type_mask);
 else
  if (id_out)
   *id_out = id;

 return parent;
}
