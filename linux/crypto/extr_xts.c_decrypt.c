
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; } ;
struct rctx {struct skcipher_request subreq; } ;


 int XTS_BLOCK_SIZE ;
 scalar_t__ crypto_skcipher_decrypt (struct skcipher_request*) ;
 int cts_final (struct skcipher_request*,scalar_t__ (*) (struct skcipher_request*)) ;
 int decrypt_done ;
 scalar_t__ init_crypt (struct skcipher_request*,int ) ;
 scalar_t__ likely (int) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;
 int xor_tweak_post (struct skcipher_request*,int) ;
 scalar_t__ xor_tweak_pre (struct skcipher_request*,int) ;

__attribute__((used)) static int decrypt(struct skcipher_request *req)
{
 struct rctx *rctx = skcipher_request_ctx(req);
 struct skcipher_request *subreq = &rctx->subreq;
 int err;

 err = init_crypt(req, decrypt_done) ?:
       xor_tweak_pre(req, 0) ?:
       crypto_skcipher_decrypt(subreq) ?:
       xor_tweak_post(req, 0);

 if (err || likely((req->cryptlen % XTS_BLOCK_SIZE) == 0))
  return err;

 return cts_final(req, crypto_skcipher_decrypt);
}
