
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*,int ) ;
 scalar_t__ fdt ;
 int fdt_pack (scalar_t__) ;
 int fdt_strerror (int) ;

__attribute__((used)) static unsigned long fdt_wrapper_finalize(void)
{
 int rc;

 rc = fdt_pack(fdt);
 if (rc != 0)
  fatal("Couldn't pack flat tree: %s\n\r",
        fdt_strerror(rc));
 return (unsigned long)fdt;
}
