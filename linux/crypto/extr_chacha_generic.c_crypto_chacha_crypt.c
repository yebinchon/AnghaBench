
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int iv; } ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int dummy; } ;


 int chacha_stream_xor (struct skcipher_request*,struct chacha_ctx*,int ) ;
 struct chacha_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;

int crypto_chacha_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct chacha_ctx *ctx = crypto_skcipher_ctx(tfm);

 return chacha_stream_xor(req, ctx, req->iv);
}
