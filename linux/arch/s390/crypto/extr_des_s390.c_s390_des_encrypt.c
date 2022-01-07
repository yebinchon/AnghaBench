
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s390_des_ctx {int key; } ;
struct crypto_tfm {int dummy; } ;


 int CPACF_KM_DEA ;
 int DES_BLOCK_SIZE ;
 int cpacf_km (int ,int ,int *,int const*,int ) ;
 struct s390_des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void s390_des_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct s390_des_ctx *ctx = crypto_tfm_ctx(tfm);

 cpacf_km(CPACF_KM_DEA, ctx->key, out, in, DES_BLOCK_SIZE);
}
