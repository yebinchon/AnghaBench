
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_des_ctx {int key; } ;
struct crypto_tfm {int dummy; } ;


 int CPACF_DECRYPT ;
 int CPACF_KM_TDEA_192 ;
 int DES_BLOCK_SIZE ;
 int cpacf_km (int,int ,int *,int const*,int ) ;
 struct s390_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void des3_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct s390_des_ctx *ctx = crypto_tfm_ctx(tfm);

 cpacf_km(CPACF_KM_TDEA_192 | CPACF_DECRYPT,
   ctx->key, dst, src, DES_BLOCK_SIZE);
}
