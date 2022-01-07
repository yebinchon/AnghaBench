
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int devp_offset_find (void const*) ;
 int fdt ;
 int fdt_node_offset_by_compatible (int ,int ,char const*) ;
 void* offset_devp (int) ;

__attribute__((used)) static void *fdt_wrapper_find_node_by_compatible(const void *prev,
       const char *val)
{
 int offset = fdt_node_offset_by_compatible(fdt, devp_offset_find(prev),
                                            val);
 return offset_devp(offset);
}
