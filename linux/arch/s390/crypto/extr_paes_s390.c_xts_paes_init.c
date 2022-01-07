
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s390_pxts_ctx {TYPE_1__* kb; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int * key; } ;


 struct s390_pxts_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int xts_paes_init(struct crypto_tfm *tfm)
{
 struct s390_pxts_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->kb[0].key = ((void*)0);
 ctx->kb[1].key = ((void*)0);

 return 0;
}
