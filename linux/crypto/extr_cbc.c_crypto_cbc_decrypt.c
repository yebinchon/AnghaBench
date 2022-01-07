
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {scalar_t__ nbytes; } ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_cbc_decrypt_blocks (struct skcipher_walk*,struct crypto_skcipher*,int ) ;
 int crypto_cbc_decrypt_one ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int skcipher_walk_done (struct skcipher_walk*,int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int crypto_cbc_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct skcipher_walk walk;
 int err;

 err = skcipher_walk_virt(&walk, req, 0);

 while (walk.nbytes) {
  err = crypto_cbc_decrypt_blocks(&walk, tfm,
      crypto_cbc_decrypt_one);
  err = skcipher_walk_done(&walk, err);
 }

 return err;
}
