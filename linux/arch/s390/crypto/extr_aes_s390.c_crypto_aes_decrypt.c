
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cip; } ;
struct s390_aes_ctx {int fc; int key; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int CPACF_DECRYPT ;
 int cpacf_km (int,int *,int *,int const*,int ) ;
 int crypto_cipher_decrypt_one (int ,int *,int const*) ;
 struct s390_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void crypto_aes_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct s390_aes_ctx *sctx = crypto_tfm_ctx(tfm);

 if (unlikely(!sctx->fc)) {
  crypto_cipher_decrypt_one(sctx->fallback.cip, out, in);
  return;
 }
 cpacf_km(sctx->fc | CPACF_DECRYPT,
   &sctx->key, out, in, AES_BLOCK_SIZE);
}
