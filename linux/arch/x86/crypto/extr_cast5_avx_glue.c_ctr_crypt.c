
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {unsigned int nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct cast5_ctx {int dummy; } ;


 unsigned int CAST5_BLOCK_SIZE ;
 unsigned int __ctr_crypt (struct skcipher_walk*,struct cast5_ctx*) ;
 int cast5_fpu_begin (int,struct skcipher_walk*,unsigned int) ;
 int cast5_fpu_end (int) ;
 struct cast5_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int ctr_crypt_final (struct skcipher_walk*,struct cast5_ctx*) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int ctr_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct cast5_ctx *ctx = crypto_skcipher_ctx(tfm);
 bool fpu_enabled = 0;
 struct skcipher_walk walk;
 unsigned int nbytes;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while ((nbytes = walk.nbytes) >= CAST5_BLOCK_SIZE) {
  fpu_enabled = cast5_fpu_begin(fpu_enabled, &walk, nbytes);
  nbytes = __ctr_crypt(&walk, ctx);
  err = skcipher_walk_done(&walk, nbytes);
 }

 cast5_fpu_end(fpu_enabled);

 if (walk.nbytes) {
  ctr_crypt_final(&walk, ctx);
  err = skcipher_walk_done(&walk, 0);
 }

 return err;
}
