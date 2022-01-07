
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deflate_comp_exit (void*) ;
 int deflate_comp_init (void*,int) ;
 int deflate_decomp_init (void*,int) ;

__attribute__((used)) static int __deflate_init(void *ctx, int format)
{
 int ret;

 ret = deflate_comp_init(ctx, format);
 if (ret)
  goto out;
 ret = deflate_decomp_init(ctx, format);
 if (ret)
  deflate_comp_exit(ctx);
out:
 return ret;
}
