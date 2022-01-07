
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int dummy; } ;
struct TYPE_2__ {struct crypto_alg* __crt_alg; } ;
struct crypto_ahash {int digest; TYPE_1__ base; } ;
struct ahash_request {unsigned int nbytes; } ;


 int CRYPTO_TFM_NEED_KEY ;
 int ENOKEY ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_op (struct ahash_request*,int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_stats_ahash_final (unsigned int,int,struct crypto_alg*) ;
 int crypto_stats_get (struct crypto_alg*) ;

int crypto_ahash_digest(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct crypto_alg *alg = tfm->base.__crt_alg;
 unsigned int nbytes = req->nbytes;
 int ret;

 crypto_stats_get(alg);
 if (crypto_ahash_get_flags(tfm) & CRYPTO_TFM_NEED_KEY)
  ret = -ENOKEY;
 else
  ret = crypto_ahash_op(req, tfm->digest);
 crypto_stats_ahash_final(nbytes, ret, alg);
 return ret;
}
