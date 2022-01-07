
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct serpent_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __serpent_decrypt (struct serpent_ctx*,int *,int const*) ;
 struct serpent_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void serpent_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct serpent_ctx *ctx = crypto_tfm_ctx(tfm);

 __serpent_decrypt(ctx, dst, src);
}
