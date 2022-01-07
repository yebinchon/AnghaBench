
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_xts_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int crypto_free_sync_skcipher (int ) ;
 struct s390_xts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void xts_fallback_exit(struct crypto_tfm *tfm)
{
 struct s390_xts_ctx *xts_ctx = crypto_tfm_ctx(tfm);

 crypto_free_sync_skcipher(xts_ctx->fallback);
}
