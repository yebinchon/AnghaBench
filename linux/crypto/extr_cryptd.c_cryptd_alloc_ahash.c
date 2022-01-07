
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* __crt_alg; } ;
struct crypto_ahash {TYPE_2__ base; } ;
struct cryptd_hash_ctx {int refcnt; } ;
struct cryptd_ahash {int dummy; } ;
struct TYPE_3__ {scalar_t__ cra_module; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 struct cryptd_ahash* ERR_CAST (struct crypto_ahash*) ;
 struct cryptd_ahash* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 scalar_t__ THIS_MODULE ;
 struct cryptd_ahash* __cryptd_ahash_cast (struct crypto_ahash*) ;
 struct cryptd_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (char*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int refcount_set (int *,int) ;
 int snprintf (char*,int,char*,char const*) ;

struct cryptd_ahash *cryptd_alloc_ahash(const char *alg_name,
     u32 type, u32 mask)
{
 char cryptd_alg_name[CRYPTO_MAX_ALG_NAME];
 struct cryptd_hash_ctx *ctx;
 struct crypto_ahash *tfm;

 if (snprintf(cryptd_alg_name, CRYPTO_MAX_ALG_NAME,
       "cryptd(%s)", alg_name) >= CRYPTO_MAX_ALG_NAME)
  return ERR_PTR(-EINVAL);
 tfm = crypto_alloc_ahash(cryptd_alg_name, type, mask);
 if (IS_ERR(tfm))
  return ERR_CAST(tfm);
 if (tfm->base.__crt_alg->cra_module != THIS_MODULE) {
  crypto_free_ahash(tfm);
  return ERR_PTR(-EINVAL);
 }

 ctx = crypto_ahash_ctx(tfm);
 refcount_set(&ctx->refcnt, 1);

 return __cryptd_ahash_cast(tfm);
}
