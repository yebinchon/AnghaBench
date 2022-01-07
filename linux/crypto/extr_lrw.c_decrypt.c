
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct rctx {struct skcipher_request subreq; } ;


 scalar_t__ crypto_skcipher_decrypt (struct skcipher_request*) ;
 int init_crypt (struct skcipher_request*) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;
 int xor_tweak_post (struct skcipher_request*) ;
 scalar_t__ xor_tweak_pre (struct skcipher_request*) ;

__attribute__((used)) static int decrypt(struct skcipher_request *req)
{
 struct rctx *rctx = skcipher_request_ctx(req);
 struct skcipher_request *subreq = &rctx->subreq;

 init_crypt(req);
 return xor_tweak_pre(req) ?:
  crypto_skcipher_decrypt(subreq) ?:
  xor_tweak_post(req);
}
