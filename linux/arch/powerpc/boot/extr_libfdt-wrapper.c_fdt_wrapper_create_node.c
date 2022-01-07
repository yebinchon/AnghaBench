
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOSPACE ;
 int devp_offset (void const*) ;
 int expand_buf (scalar_t__) ;
 int fdt ;
 int fdt_add_subnode (int ,int ,char const*) ;
 void* offset_devp (int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void *fdt_wrapper_create_node(const void *devp, const char *name)
{
 int offset;

 offset = fdt_add_subnode(fdt, devp_offset(devp), name);
 if (offset == -FDT_ERR_NOSPACE) {
  expand_buf(strlen(name) + 16);
  offset = fdt_add_subnode(fdt, devp_offset(devp), name);
 }

 return offset_devp(offset);
}
