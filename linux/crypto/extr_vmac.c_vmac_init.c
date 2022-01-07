
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmac_tfm_ctx {int polykey; } ;
struct vmac_desc_ctx {int first_block_processed; scalar_t__ nonce_size; int polytmp; scalar_t__ partial_size; } ;
struct shash_desc {int tfm; } ;


 struct vmac_tfm_ctx* crypto_shash_ctx (int ) ;
 int memcpy (int ,int ,int) ;
 struct vmac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int vmac_init(struct shash_desc *desc)
{
 const struct vmac_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct vmac_desc_ctx *dctx = shash_desc_ctx(desc);

 dctx->partial_size = 0;
 dctx->first_block_processed = 0;
 memcpy(dctx->polytmp, tctx->polykey, sizeof(dctx->polytmp));
 dctx->nonce_size = 0;
 return 0;
}
