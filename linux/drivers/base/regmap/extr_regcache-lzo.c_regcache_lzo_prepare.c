
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_lzo_ctx {int wmem; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LZO1X_MEM_COMPRESS ;
 int kmalloc (int ,int ) ;

__attribute__((used)) static int regcache_lzo_prepare(struct regcache_lzo_ctx *lzo_ctx)
{
 lzo_ctx->wmem = kmalloc(LZO1X_MEM_COMPRESS, GFP_KERNEL);
 if (!lzo_ctx->wmem)
  return -ENOMEM;
 return 0;
}
