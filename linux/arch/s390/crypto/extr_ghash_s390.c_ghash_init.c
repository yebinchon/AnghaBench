
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct ghash_desc_ctx {int key; } ;
struct ghash_ctx {int key; } ;


 int GHASH_BLOCK_SIZE ;
 struct ghash_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ghash_desc_ctx*,int ,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_init(struct shash_desc *desc)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 struct ghash_ctx *ctx = crypto_shash_ctx(desc->tfm);

 memset(dctx, 0, sizeof(*dctx));
 memcpy(dctx->key, ctx->key, GHASH_BLOCK_SIZE);

 return 0;
}
