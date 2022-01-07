
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des_encrypt (struct des_ctx const*,int *,int const*) ;

__attribute__((used)) static void crypto_des_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 const struct des_ctx *dctx = crypto_tfm_ctx(tfm);

 des_encrypt(dctx, dst, src);
}
