
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zstd_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __zstd_init (struct zstd_ctx*) ;
 struct zstd_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int zstd_init(struct crypto_tfm *tfm)
{
 struct zstd_ctx *ctx = crypto_tfm_ctx(tfm);

 return __zstd_init(ctx);
}
