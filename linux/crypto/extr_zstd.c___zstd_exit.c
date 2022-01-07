
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zstd_comp_exit (void*) ;
 int zstd_decomp_exit (void*) ;

__attribute__((used)) static void __zstd_exit(void *ctx)
{
 zstd_comp_exit(ctx);
 zstd_decomp_exit(ctx);
}
