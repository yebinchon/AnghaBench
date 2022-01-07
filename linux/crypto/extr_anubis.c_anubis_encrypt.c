
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct anubis_ctx {int R; int E; } ;


 int anubis_crypt (int ,int *,int const*,int ) ;
 struct anubis_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void anubis_encrypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 struct anubis_ctx *ctx = crypto_tfm_ctx(tfm);
 anubis_crypt(ctx->E, dst, src, ctx->R);
}
