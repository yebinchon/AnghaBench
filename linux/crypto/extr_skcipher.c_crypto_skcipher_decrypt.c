
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skcipher_request {unsigned int cryptlen; } ;
struct TYPE_2__ {struct crypto_alg* __crt_alg; } ;
struct crypto_skcipher {int (* decrypt ) (struct skcipher_request*) ;TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int ENOKEY ;
 int crypto_skcipher_get_flags (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int crypto_stats_get (struct crypto_alg*) ;
 int crypto_stats_skcipher_decrypt (unsigned int,int,struct crypto_alg*) ;
 int stub1 (struct skcipher_request*) ;

int crypto_skcipher_decrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_alg *alg = tfm->base.__crt_alg;
 unsigned int cryptlen = req->cryptlen;
 int ret;

 crypto_stats_get(alg);
 if (crypto_skcipher_get_flags(tfm) & CRYPTO_TFM_NEED_KEY)
  ret = -ENOKEY;
 else
  ret = tfm->decrypt(req);
 crypto_stats_skcipher_decrypt(cryptlen, ret, alg);
 return ret;
}
