
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt_setprop (void*,int,char const*,int *,int) ;
 int node_offset (void*,char const*) ;

__attribute__((used)) static int setprop(void *fdt, const char *node_path, const char *property,
     uint32_t *val_array, int size)
{
 int offset = node_offset(fdt, node_path);
 if (offset < 0)
  return offset;
 return fdt_setprop(fdt, offset, property, val_array, size);
}
