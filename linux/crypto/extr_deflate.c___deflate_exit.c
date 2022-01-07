
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deflate_comp_exit (void*) ;
 int deflate_decomp_exit (void*) ;

__attribute__((used)) static void __deflate_exit(void *ctx)
{
 deflate_comp_exit(ctx);
 deflate_decomp_exit(ctx);
}
