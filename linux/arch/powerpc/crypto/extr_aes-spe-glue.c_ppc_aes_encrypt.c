
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ppc_aes_ctx {int rounds; int key_enc; } ;
struct crypto_tfm {int dummy; } ;


 struct ppc_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ppc_encrypt_aes (int *,int const*,int ,int ) ;
 int spe_begin () ;
 int spe_end () ;

__attribute__((used)) static void ppc_aes_encrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct ppc_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 spe_begin();
 ppc_encrypt_aes(out, in, ctx->key_enc, ctx->rounds);
 spe_end();
}
