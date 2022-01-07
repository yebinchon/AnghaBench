
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zstd_comp_exit (void*) ;
 int zstd_comp_init (void*) ;
 int zstd_decomp_init (void*) ;

__attribute__((used)) static int __zstd_init(void *ctx)
{
 int ret;

 ret = zstd_comp_init(ctx);
 if (ret)
  return ret;
 ret = zstd_decomp_init(ctx);
 if (ret)
  zstd_comp_exit(ctx);
 return ret;
}
