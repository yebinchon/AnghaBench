
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct cmac_desc_ctx {scalar_t__ len; scalar_t__ ctx; } ;


 int * PTR_ALIGN (void*,unsigned long) ;
 unsigned long crypto_shash_alignmask (int ) ;
 int crypto_shash_blocksize (int ) ;
 int memset (int *,int ,int) ;
 struct cmac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crypto_cmac_digest_init(struct shash_desc *pdesc)
{
 unsigned long alignmask = crypto_shash_alignmask(pdesc->tfm);
 struct cmac_desc_ctx *ctx = shash_desc_ctx(pdesc);
 int bs = crypto_shash_blocksize(pdesc->tfm);
 u8 *prev = PTR_ALIGN((void *)ctx->ctx, alignmask + 1) + bs;

 ctx->len = 0;
 memset(prev, 0, bs);

 return 0;
}
