
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct des_sparc64_ctx {int * decrypt_expkey; } ;
struct crypto_tfm {int dummy; } ;


 struct des_sparc64_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int des_sparc64_crypt (int const*,int const*,int *) ;

__attribute__((used)) static void sparc_des_decrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct des_sparc64_ctx *ctx = crypto_tfm_ctx(tfm);
 const u64 *K = ctx->decrypt_expkey;

 des_sparc64_crypt(K, (const u64 *) src, (u64 *) dst);
}
