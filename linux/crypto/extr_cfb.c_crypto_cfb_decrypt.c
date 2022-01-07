
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {unsigned int const nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 unsigned int crypto_cfb_bsize (struct crypto_skcipher*) ;
 int crypto_cfb_decrypt_blocks (struct skcipher_walk*,struct crypto_skcipher*) ;
 int crypto_cfb_final (struct skcipher_walk*,struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_walk_done (struct skcipher_walk*,int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int crypto_cfb_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct skcipher_walk walk;
 const unsigned int bsize = crypto_cfb_bsize(tfm);
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes >= bsize) {
  err = crypto_cfb_decrypt_blocks(&walk, tfm);
  err = skcipher_walk_done(&walk, err);
 }

 if (walk.nbytes) {
  crypto_cfb_final(&walk, tfm);
  err = skcipher_walk_done(&walk, 0);
 }

 return err;
}
