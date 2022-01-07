
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct TYPE_2__ {int expkey; } ;
struct des3_ede_x86_ctx {TYPE_1__ dec; } ;
struct crypto_skcipher {int dummy; } ;


 struct des3_ede_x86_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int ecb_crypt (struct skcipher_request*,int ) ;

__attribute__((used)) static int ecb_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct des3_ede_x86_ctx *ctx = crypto_skcipher_ctx(tfm);

 return ecb_crypt(req, ctx->dec.expkey);
}
