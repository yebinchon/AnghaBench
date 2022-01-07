
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {unsigned int nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct bf_ctx {int dummy; } ;


 unsigned int BF_BLOCK_SIZE ;
 unsigned int __ctr_crypt (struct bf_ctx*,struct skcipher_walk*) ;
 struct bf_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int ctr_crypt_final (struct bf_ctx*,struct skcipher_walk*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int ctr_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct bf_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 unsigned int nbytes;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while ((nbytes = walk.nbytes) >= BF_BLOCK_SIZE) {
  nbytes = __ctr_crypt(ctx, &walk);
  err = skcipher_walk_done(&walk, nbytes);
 }

 if (nbytes) {
  ctr_crypt_final(ctx, &walk);
  err = skcipher_walk_done(&walk, 0);
 }

 return err;
}
