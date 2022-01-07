
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_paes_ctx {int kb; } ;
struct crypto_tfm {int dummy; } ;


 int _free_kb_keybuf (int *) ;
 struct s390_paes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void ctr_paes_exit(struct crypto_tfm *tfm)
{
 struct s390_paes_ctx *ctx = crypto_tfm_ctx(tfm);

 _free_kb_keybuf(&ctx->kb);
}
