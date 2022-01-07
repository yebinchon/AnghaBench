
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int iv; int cryptlen; int dst; int src; } ;
struct TYPE_2__ {int skcipher; } ;
struct essiv_tfm_ctx {TYPE_1__ u; int essiv_cipher; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_cipher_encrypt_one (int ,int ,int ) ;
 struct essiv_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int essiv_skcipher_done ;
 struct skcipher_request* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_flags (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct skcipher_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,int ,int ,int ,int ) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;

__attribute__((used)) static int essiv_skcipher_crypt(struct skcipher_request *req, bool enc)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 const struct essiv_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);
 struct skcipher_request *subreq = skcipher_request_ctx(req);

 crypto_cipher_encrypt_one(tctx->essiv_cipher, req->iv, req->iv);

 skcipher_request_set_tfm(subreq, tctx->u.skcipher);
 skcipher_request_set_crypt(subreq, req->src, req->dst, req->cryptlen,
       req->iv);
 skcipher_request_set_callback(subreq, skcipher_request_flags(req),
          essiv_skcipher_done, req);

 return enc ? crypto_skcipher_encrypt(subreq) :
       crypto_skcipher_decrypt(subreq);
}
