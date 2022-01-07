
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_setprop_string (void*,int,char const*,char const*) ;
 int node_offset (void*,char const*) ;

__attribute__((used)) static int setprop_string(void *fdt, const char *node_path,
     const char *property, const char *string)
{
 int offset = node_offset(fdt, node_path);
 if (offset < 0)
  return offset;
 return fdt_setprop_string(fdt, offset, property, string);
}
