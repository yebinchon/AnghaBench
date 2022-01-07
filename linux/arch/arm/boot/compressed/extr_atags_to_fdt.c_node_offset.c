
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOTFOUND ;
 int fdt_add_subnode (void*,int ,char const*) ;
 int fdt_path_offset (void*,char const*) ;

__attribute__((used)) static int node_offset(void *fdt, const char *node_path)
{
 int offset = fdt_path_offset(fdt, node_path);
 if (offset == -FDT_ERR_NOTFOUND)
  offset = fdt_add_subnode(fdt, 0, node_path);
 return offset;
}
