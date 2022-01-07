
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devp_offset_find (void const*) ;
 int fdt ;
 int fdt_node_offset_by_prop_value (int ,int ,char const*,char const*,int) ;
 void* offset_devp (int) ;

__attribute__((used)) static void *fdt_wrapper_find_node_by_prop_value(const void *prev,
       const char *name,
       const char *val,
       int len)
{
 int offset = fdt_node_offset_by_prop_value(fdt, devp_offset_find(prev),
                                            name, val, len);
 return offset_devp(offset);
}
