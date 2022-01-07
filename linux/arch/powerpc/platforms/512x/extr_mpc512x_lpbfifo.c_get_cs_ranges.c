
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct cs_range {int dummy; } ;
struct TYPE_4__ {scalar_t__ base; } ;
struct TYPE_3__ {int cs_n; TYPE_2__* cs_ranges; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 TYPE_2__* devm_kcalloc (struct device*,int,int,int ) ;
 TYPE_1__ lpbfifo ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,int*,int) ;

__attribute__((used)) static int get_cs_ranges(struct device *dev)
{
 int ret = -ENODEV;
 struct device_node *lb_node;
 const u32 *addr_cells_p;
 const u32 *size_cells_p;
 int proplen;
 size_t i;

 lb_node = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpc5121-localbus");
 if (!lb_node)
  return ret;
 addr_cells_p = of_get_property(lb_node, "#address-cells", ((void*)0));
 size_cells_p = of_get_property(lb_node, "#size-cells", ((void*)0));
 if (addr_cells_p == ((void*)0) || *addr_cells_p != 2 ||
    size_cells_p == ((void*)0) || *size_cells_p != 1) {
  goto end;
 }

 proplen = of_property_count_u32_elems(lb_node, "ranges");
 if (proplen <= 0 || proplen % 4 != 0)
  goto end;

 lpbfifo.cs_n = proplen / 4;
 lpbfifo.cs_ranges = devm_kcalloc(dev, lpbfifo.cs_n,
     sizeof(struct cs_range), GFP_KERNEL);
 if (!lpbfifo.cs_ranges)
  goto end;

 if (of_property_read_u32_array(lb_node, "ranges",
    (u32 *)lpbfifo.cs_ranges, proplen) != 0) {
  goto end;
 }

 for (i = 0; i < lpbfifo.cs_n; i++) {
  if (lpbfifo.cs_ranges[i].base != 0)
   goto end;
 }

 ret = 0;

 end:
 of_node_put(lb_node);
 return ret;
}
