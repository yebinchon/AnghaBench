
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ check_err (int) ;
 int devp_offset (void const*) ;
 int fdt ;
 int fdt_get_path (int ,int ,char*,int) ;

__attribute__((used)) static char *fdt_wrapper_get_path(const void *devp, char *buf, int len)
{
 int rc;

 rc = fdt_get_path(fdt, devp_offset(devp), buf, len);
 if (check_err(rc))
  return ((void*)0);
 return buf;
}
