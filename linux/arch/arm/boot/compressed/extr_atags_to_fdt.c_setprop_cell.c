
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fdt_setprop_cell (void*,int,char const*,int ) ;
 int node_offset (void*,char const*) ;

__attribute__((used)) static int setprop_cell(void *fdt, const char *node_path,
   const char *property, uint32_t val)
{
 int offset = node_offset(fdt, node_path);
 if (offset < 0)
  return offset;
 return fdt_setprop_cell(fdt, offset, property, val);
}
