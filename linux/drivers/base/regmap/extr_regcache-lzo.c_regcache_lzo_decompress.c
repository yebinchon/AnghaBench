
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_lzo_ctx {size_t dst_len; int dst; int src_len; int src; } ;


 int EINVAL ;
 int LZO_E_OK ;
 int lzo1x_decompress_safe (int ,int ,int ,size_t*) ;

__attribute__((used)) static int regcache_lzo_decompress(struct regcache_lzo_ctx *lzo_ctx)
{
 size_t dst_len;
 int ret;

 dst_len = lzo_ctx->dst_len;
 ret = lzo1x_decompress_safe(lzo_ctx->src, lzo_ctx->src_len,
        lzo_ctx->dst, &dst_len);
 if (ret != LZO_E_OK || dst_len != lzo_ctx->dst_len)
  return -EINVAL;
 return 0;
}
