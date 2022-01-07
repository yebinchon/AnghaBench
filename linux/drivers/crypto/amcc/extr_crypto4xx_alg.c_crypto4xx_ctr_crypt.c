
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct skcipher_request {size_t iv; int cryptlen; int dst; int src; TYPE_2__ base; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {int cipher; } ;
struct crypto4xx_ctx {TYPE_1__ sw_cipher; } ;
typedef int __be32 ;


 unsigned int AES_BLOCK_SIZE ;
 unsigned int ALIGN (int ,unsigned int) ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 unsigned int be32_to_cpup (int *) ;
 int crypto4xx_decrypt_iv_stream (struct skcipher_request*) ;
 int crypto4xx_encrypt_iv_stream (struct skcipher_request*) ;
 struct crypto4xx_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 size_t crypto_skcipher_ivsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,size_t) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int
crypto4xx_ctr_crypt(struct skcipher_request *req, bool encrypt)
{
 struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 struct crypto4xx_ctx *ctx = crypto_skcipher_ctx(cipher);
 size_t iv_len = crypto_skcipher_ivsize(cipher);
 unsigned int counter = be32_to_cpup((__be32 *)(req->iv + iv_len - 4));
 unsigned int nblks = ALIGN(req->cryptlen, AES_BLOCK_SIZE) /
   AES_BLOCK_SIZE;







 if (counter + nblks < counter) {
  SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->sw_cipher.cipher);
  int ret;

  skcipher_request_set_sync_tfm(subreq, ctx->sw_cipher.cipher);
  skcipher_request_set_callback(subreq, req->base.flags,
   ((void*)0), ((void*)0));
  skcipher_request_set_crypt(subreq, req->src, req->dst,
   req->cryptlen, req->iv);
  ret = encrypt ? crypto_skcipher_encrypt(subreq)
   : crypto_skcipher_decrypt(subreq);
  skcipher_request_zero(subreq);
  return ret;
 }

 return encrypt ? crypto4xx_encrypt_iv_stream(req)
         : crypto4xx_decrypt_iv_stream(req);
}
