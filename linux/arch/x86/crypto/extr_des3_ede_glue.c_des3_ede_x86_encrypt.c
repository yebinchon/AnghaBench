
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int crypto_tfm_ctx (struct crypto_tfm*) ;
 int des3_ede_enc_blk (int ,int *,int const*) ;

__attribute__((used)) static void des3_ede_x86_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 des3_ede_enc_blk(crypto_tfm_ctx(tfm), dst, src);
}
