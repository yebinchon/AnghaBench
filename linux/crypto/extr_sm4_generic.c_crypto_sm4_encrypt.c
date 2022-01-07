
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_sm4_ctx {int rkey_enc; } ;


 struct crypto_sm4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int sm4_do_crypt (int ,int *,int *) ;

void crypto_sm4_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 const struct crypto_sm4_ctx *ctx = crypto_tfm_ctx(tfm);

 sm4_do_crypt(ctx->rkey_enc, (u32 *)out, (u32 *)in);
}
