
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_walk {scalar_t__ total; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; } ;


 scalar_t__ crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int skcipher_walk_aead_common (struct skcipher_walk*,struct aead_request*,int) ;

int skcipher_walk_aead_decrypt(struct skcipher_walk *walk,
          struct aead_request *req, bool atomic)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);

 walk->total = req->cryptlen - crypto_aead_authsize(tfm);

 return skcipher_walk_aead_common(walk, req, atomic);
}
