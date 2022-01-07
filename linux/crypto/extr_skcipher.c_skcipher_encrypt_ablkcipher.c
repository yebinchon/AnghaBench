
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_skcipher {int dummy; } ;
struct ablkcipher_alg {int encrypt; } ;
struct TYPE_2__ {struct ablkcipher_alg cra_ablkcipher; } ;


 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 struct crypto_tfm* crypto_skcipher_tfm (struct crypto_skcipher*) ;
 int skcipher_crypt_ablkcipher (struct skcipher_request*,int ) ;

__attribute__((used)) static int skcipher_encrypt_ablkcipher(struct skcipher_request *req)
{
 struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
 struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
 struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;

 return skcipher_crypt_ablkcipher(req, alg->encrypt);
}
