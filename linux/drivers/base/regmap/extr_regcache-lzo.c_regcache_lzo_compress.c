
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_lzo_ctx {size_t dst_len; int wmem; int dst; int src_len; int src; } ;


 int EINVAL ;
 int LZO_E_OK ;
 int lzo1x_1_compress (int ,int ,int ,size_t*,int ) ;

__attribute__((used)) static int regcache_lzo_compress(struct regcache_lzo_ctx *lzo_ctx)
{
 size_t compress_size;
 int ret;

 ret = lzo1x_1_compress(lzo_ctx->src, lzo_ctx->src_len,
          lzo_ctx->dst, &compress_size, lzo_ctx->wmem);
 if (ret != LZO_E_OK || compress_size > lzo_ctx->dst_len)
  return -EINVAL;
 lzo_ctx->dst_len = compress_size;
 return 0;
}
