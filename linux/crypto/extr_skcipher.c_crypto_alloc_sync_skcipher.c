
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_sync_skcipher {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int EINVAL ;
 struct crypto_sync_skcipher* ERR_PTR (int ) ;
 int IS_ERR (struct crypto_skcipher*) ;
 scalar_t__ MAX_SYNC_SKCIPHER_REQSIZE ;
 scalar_t__ WARN_ON (int) ;
 struct crypto_skcipher* crypto_alloc_tfm (char const*,int *,int ,int ) ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 scalar_t__ crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 int crypto_skcipher_type2 ;

struct crypto_sync_skcipher *crypto_alloc_sync_skcipher(
    const char *alg_name, u32 type, u32 mask)
{
 struct crypto_skcipher *tfm;


 mask |= CRYPTO_ALG_ASYNC;

 tfm = crypto_alloc_tfm(alg_name, &crypto_skcipher_type2, type, mask);





 if (!IS_ERR(tfm) && WARN_ON(crypto_skcipher_reqsize(tfm) >
        MAX_SYNC_SKCIPHER_REQSIZE)) {
  crypto_free_skcipher(tfm);
  return ERR_PTR(-EINVAL);
 }

 return (struct crypto_sync_skcipher *)tfm;
}
