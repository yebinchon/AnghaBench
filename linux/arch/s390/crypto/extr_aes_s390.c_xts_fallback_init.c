
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_xts_ctx {int fallback; } ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct TYPE_2__ {char* cra_name; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_alloc_sync_skcipher (char const*,int ,int ) ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int xts_fallback_init(struct crypto_tfm *tfm)
{
 const char *name = tfm->__crt_alg->cra_name;
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);

 xts_ctx->fallback = crypto_alloc_sync_skcipher(name, 0,
        CRYPTO_ALG_NEED_FALLBACK);

 if (IS_ERR(xts_ctx->fallback)) {
  pr_err("Allocating XTS fallback algorithm %s failed\n",
         name);
  return PTR_ERR(xts_ctx->fallback);
 }
 return 0;
}
