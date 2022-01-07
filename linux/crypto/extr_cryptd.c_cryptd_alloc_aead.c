
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* __crt_alg; } ;
struct crypto_aead {TYPE_2__ base; } ;
struct cryptd_aead_ctx {int refcnt; } ;
struct cryptd_aead {int dummy; } ;
struct TYPE_3__ {scalar_t__ cra_module; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 struct cryptd_aead* ERR_CAST (struct crypto_aead*) ;
 struct cryptd_aead* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct crypto_aead*) ;
 scalar_t__ THIS_MODULE ;
 struct cryptd_aead* __cryptd_aead_cast (struct crypto_aead*) ;
 struct cryptd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_alloc_aead (char*,int ,int ) ;
 int crypto_free_aead (struct crypto_aead*) ;
 int refcount_set (int *,int) ;
 int snprintf (char*,int,char*,char const*) ;

struct cryptd_aead *cryptd_alloc_aead(const char *alg_name,
        u32 type, u32 mask)
{
 char cryptd_alg_name[CRYPTO_MAX_ALG_NAME];
 struct cryptd_aead_ctx *ctx;
 struct crypto_aead *tfm;

 if (snprintf(cryptd_alg_name, CRYPTO_MAX_ALG_NAME,
       "cryptd(%s)", alg_name) >= CRYPTO_MAX_ALG_NAME)
  return ERR_PTR(-EINVAL);
 tfm = crypto_alloc_aead(cryptd_alg_name, type, mask);
 if (IS_ERR(tfm))
  return ERR_CAST(tfm);
 if (tfm->base.__crt_alg->cra_module != THIS_MODULE) {
  crypto_free_aead(tfm);
  return ERR_PTR(-EINVAL);
 }

 ctx = crypto_aead_ctx(tfm);
 refcount_set(&ctx->refcnt, 1);

 return __cryptd_aead_cast(tfm);
}
