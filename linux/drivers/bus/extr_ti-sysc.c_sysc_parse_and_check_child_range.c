
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sysc {int module_size; int module_pa; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOENT ;
 int be32_to_cpup (int const*) ;
 int dev_err (TYPE_1__*,char*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_translate_address (struct device_node*,int ) ;

__attribute__((used)) static int sysc_parse_and_check_child_range(struct sysc *ddata)
{
 struct device_node *np = ddata->dev->of_node;
 const __be32 *ranges;
 u32 nr_addr, nr_size;
 int len, error;

 ranges = of_get_property(np, "ranges", &len);
 if (!ranges) {
  dev_err(ddata->dev, "missing ranges for %pOF\n", np);

  return -ENOENT;
 }

 len /= sizeof(*ranges);

 if (len < 3) {
  dev_err(ddata->dev, "incomplete ranges for %pOF\n", np);

  return -EINVAL;
 }

 error = of_property_read_u32(np, "#address-cells", &nr_addr);
 if (error)
  return -ENOENT;

 error = of_property_read_u32(np, "#size-cells", &nr_size);
 if (error)
  return -ENOENT;

 if (nr_addr != 1 || nr_size != 1) {
  dev_err(ddata->dev, "invalid ranges for %pOF\n", np);

  return -EINVAL;
 }

 ranges++;
 ddata->module_pa = of_translate_address(np, ranges++);
 ddata->module_size = be32_to_cpup(ranges);

 return 0;
}
