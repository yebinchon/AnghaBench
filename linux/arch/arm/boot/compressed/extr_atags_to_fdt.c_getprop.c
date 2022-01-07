
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 void const* fdt_getprop (void const*,int,char const*,int*) ;
 int fdt_path_offset (void const*,char const*) ;

__attribute__((used)) static const void *getprop(const void *fdt, const char *node_path,
      const char *property, int *len)
{
 int offset = fdt_path_offset(fdt, node_path);

 if (offset == -FDT_ERR_NOTFOUND)
  return ((void*)0);

 return fdt_getprop(fdt, offset, property, len);
}
