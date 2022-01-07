
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxhash64_tfm_ctx {int seed; } ;
struct xxhash64_desc_ctx {int xxhstate; } ;
struct shash_desc {int tfm; } ;


 struct xxhash64_tfm_ctx* crypto_shash_ctx (int ) ;
 struct xxhash64_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 int xxh64_reset (int *,int ) ;

__attribute__((used)) static int xxhash64_init(struct shash_desc *desc)
{
 struct xxhash64_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct xxhash64_desc_ctx *dctx = shash_desc_ctx(desc);

 xxh64_reset(&dctx->xxhstate, tctx->seed);

 return 0;
}
