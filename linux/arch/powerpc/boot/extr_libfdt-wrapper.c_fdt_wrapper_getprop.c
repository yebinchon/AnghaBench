
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_err (int) ;
 int devp_offset (void const*) ;
 int fdt ;
 void* fdt_getprop (int ,int ,char const*,int*) ;
 int memcpy (void*,void const*,int ) ;
 int min (int,int const) ;

__attribute__((used)) static int fdt_wrapper_getprop(const void *devp, const char *name,
          void *buf, const int buflen)
{
 const void *p;
 int len;

 p = fdt_getprop(fdt, devp_offset(devp), name, &len);
 if (!p)
  return check_err(len);
 memcpy(buf, p, min(len, buflen));
 return len;
}
