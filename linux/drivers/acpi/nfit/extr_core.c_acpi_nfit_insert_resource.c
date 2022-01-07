
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char* name; int desc; int flags; int end; int start; } ;
struct nd_region_desc {struct resource* res; } ;
struct acpi_nfit_desc {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IORES_DESC_PERSISTENT_MEMORY ;
 int REGION_INTERSECTS ;
 int acpi_nfit_remove_resource ;
 int devm_add_action_or_reset (int ,int ,struct resource*) ;
 struct resource* devm_kzalloc (int ,int,int ) ;
 int insert_resource (int *,struct resource*) ;
 int iomem_resource ;
 int region_intersects (int ,int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int acpi_nfit_insert_resource(struct acpi_nfit_desc *acpi_desc,
  struct nd_region_desc *ndr_desc)
{
 struct resource *res, *nd_res = ndr_desc->res;
 int is_pmem, ret;


 is_pmem = region_intersects(nd_res->start, resource_size(nd_res),
    IORESOURCE_MEM, IORES_DESC_PERSISTENT_MEMORY);
 if (is_pmem == REGION_INTERSECTS)
  return 0;

 res = devm_kzalloc(acpi_desc->dev, sizeof(*res), GFP_KERNEL);
 if (!res)
  return -ENOMEM;

 res->name = "Persistent Memory";
 res->start = nd_res->start;
 res->end = nd_res->end;
 res->flags = IORESOURCE_MEM;
 res->desc = IORES_DESC_PERSISTENT_MEMORY;

 ret = insert_resource(&iomem_resource, res);
 if (ret)
  return ret;

 ret = devm_add_action_or_reset(acpi_desc->dev,
     acpi_nfit_remove_resource,
     res);
 if (ret)
  return ret;

 return 0;
}
