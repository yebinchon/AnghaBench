
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * key; } ;
struct s390_paes_ctx {TYPE_1__ kb; } ;
struct crypto_tfm {int dummy; } ;


 struct s390_paes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int cbc_paes_init(struct crypto_tfm *tfm)
{
 struct s390_paes_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->kb.key = ((void*)0);

 return 0;
}
