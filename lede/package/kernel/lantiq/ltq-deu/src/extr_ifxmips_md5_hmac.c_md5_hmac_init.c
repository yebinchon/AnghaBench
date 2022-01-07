
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct md5_hmac_ctx {int keylen; int key; scalar_t__ dbn; } ;


 struct md5_hmac_ctx* crypto_shash_ctx (int ) ;
 int md5_hmac_setkey_hw (int ,int ) ;

__attribute__((used)) static int md5_hmac_init(struct shash_desc *desc)
{

    struct md5_hmac_ctx *mctx = crypto_shash_ctx(desc->tfm);


    mctx->dbn = 0;
    md5_hmac_setkey_hw(mctx->key, mctx->keylen);

    return 0;
}
