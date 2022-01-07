
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {unsigned int controlr_M; unsigned int key_length; scalar_t__ expkey; } ;
struct crypto_ablkcipher {int dummy; } ;


 struct des_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int lq_des3_ede_setkey(struct crypto_ablkcipher *tfm, const u8 *in_key,
                      unsigned int keylen)
{
    struct des_ctx *dctx = crypto_ablkcipher_ctx(tfm);



    dctx->controlr_M = keylen/8 + 1;
    dctx->key_length = keylen;

    memcpy ((u8 *) (dctx->expkey), in_key, keylen);

    return 0;
}
