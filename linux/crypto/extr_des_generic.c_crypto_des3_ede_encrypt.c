
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des3_ede_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct des3_ede_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des3_ede_encrypt (struct des3_ede_ctx const*,int *,int const*) ;

__attribute__((used)) static void crypto_des3_ede_encrypt(struct crypto_tfm *tfm, u8 *dst,
        const u8 *src)
{
 const struct des3_ede_ctx *dctx = crypto_tfm_ctx(tfm);

 des3_ede_encrypt(dctx, dst, src);
}
