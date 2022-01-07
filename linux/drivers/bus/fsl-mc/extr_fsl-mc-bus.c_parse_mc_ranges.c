
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int __be32 ;


 int EINVAL ;
 int be32_to_cpup (int const*) ;
 int dev_err (struct device*,char*,struct device_node*) ;
 int dev_warn (struct device*,char*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 int of_n_addr_cells (struct device_node*) ;
 int of_n_size_cells (struct device_node*) ;

__attribute__((used)) static int parse_mc_ranges(struct device *dev,
      int *paddr_cells,
      int *mc_addr_cells,
      int *mc_size_cells,
      const __be32 **ranges_start)
{
 const __be32 *prop;
 int range_tuple_cell_count;
 int ranges_len;
 int tuple_len;
 struct device_node *mc_node = dev->of_node;

 *ranges_start = of_get_property(mc_node, "ranges", &ranges_len);
 if (!(*ranges_start) || !ranges_len) {
  dev_warn(dev,
    "missing or empty ranges property for device tree node '%pOFn'\n",
    mc_node);
  return 0;
 }

 *paddr_cells = of_n_addr_cells(mc_node);

 prop = of_get_property(mc_node, "#address-cells", ((void*)0));
 if (prop)
  *mc_addr_cells = be32_to_cpup(prop);
 else
  *mc_addr_cells = *paddr_cells;

 prop = of_get_property(mc_node, "#size-cells", ((void*)0));
 if (prop)
  *mc_size_cells = be32_to_cpup(prop);
 else
  *mc_size_cells = of_n_size_cells(mc_node);

 range_tuple_cell_count = *paddr_cells + *mc_addr_cells +
     *mc_size_cells;

 tuple_len = range_tuple_cell_count * sizeof(__be32);
 if (ranges_len % tuple_len != 0) {
  dev_err(dev, "malformed ranges property '%pOFn'\n", mc_node);
  return -EINVAL;
 }

 return ranges_len / tuple_len;
}
