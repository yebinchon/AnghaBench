
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct regcache_lzo_ctx {scalar_t__ dst_len; int dst; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kmalloc (scalar_t__,int ) ;
 scalar_t__ lzo1x_worst_compress (int ) ;
 int regcache_lzo_compress (struct regcache_lzo_ctx*) ;

__attribute__((used)) static int regcache_lzo_compress_cache_block(struct regmap *map,
  struct regcache_lzo_ctx *lzo_ctx)
{
 int ret;

 lzo_ctx->dst_len = lzo1x_worst_compress(PAGE_SIZE);
 lzo_ctx->dst = kmalloc(lzo_ctx->dst_len, GFP_KERNEL);
 if (!lzo_ctx->dst) {
  lzo_ctx->dst_len = 0;
  return -ENOMEM;
 }

 ret = regcache_lzo_compress(lzo_ctx);
 if (ret < 0)
  return ret;
 return 0;
}
