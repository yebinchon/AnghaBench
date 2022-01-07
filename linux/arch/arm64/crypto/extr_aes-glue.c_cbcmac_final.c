
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct mac_tfm_ctx {int key; } ;
struct mac_desc_ctx {scalar_t__ len; int dg; } ;


 int AES_BLOCK_SIZE ;
 struct mac_tfm_ctx* crypto_shash_ctx (int ) ;
 int mac_do_update (int *,int *,int ,int ,int,int ) ;
 int memcpy (int *,int ,int ) ;
 struct mac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int cbcmac_final(struct shash_desc *desc, u8 *out)
{
 struct mac_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct mac_desc_ctx *ctx = shash_desc_ctx(desc);

 mac_do_update(&tctx->key, ((void*)0), 0, ctx->dg, (ctx->len != 0), 0);

 memcpy(out, ctx->dg, AES_BLOCK_SIZE);

 return 0;
}
