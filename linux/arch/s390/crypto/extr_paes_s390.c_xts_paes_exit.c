
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_pxts_ctx {int * kb; } ;
struct crypto_tfm {int dummy; } ;


 int _free_kb_keybuf (int *) ;
 struct s390_pxts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void xts_paes_exit(struct crypto_tfm *tfm)
{
 struct s390_pxts_ctx *ctx = crypto_tfm_ctx(tfm);

 _free_kb_keybuf(&ctx->kb[0]);
 _free_kb_keybuf(&ctx->kb[1]);
}
