
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_alg {int dummy; } ;
struct TYPE_2__ {struct crypto_alg* __crt_alg; } ;
struct crypto_ahash {int finup; TYPE_1__ base; } ;
struct ahash_request {unsigned int nbytes; } ;


 int crypto_ahash_op (struct ahash_request*,int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_stats_ahash_final (unsigned int,int,struct crypto_alg*) ;
 int crypto_stats_get (struct crypto_alg*) ;

int crypto_ahash_finup(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct crypto_alg *alg = tfm->base.__crt_alg;
 unsigned int nbytes = req->nbytes;
 int ret;

 crypto_stats_get(alg);
 ret = crypto_ahash_op(req, crypto_ahash_reqtfm(req)->finup);
 crypto_stats_ahash_final(nbytes, ret, alg);
 return ret;
}
