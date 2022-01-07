
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt ;
 int fdt_path_offset (int ,char const*) ;
 void* offset_devp (int ) ;

__attribute__((used)) static void *fdt_wrapper_finddevice(const char *path)
{
 return offset_devp(fdt_path_offset(fdt, path));
}
