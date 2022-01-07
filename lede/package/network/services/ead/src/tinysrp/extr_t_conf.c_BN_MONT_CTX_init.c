
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; int Ni; int N; int RR; scalar_t__ ri; } ;
typedef TYPE_1__ BN_MONT_CTX ;


 int BN_init (int *) ;

void BN_MONT_CTX_init(BN_MONT_CTX *ctx)
 {
 ctx->ri=0;
 BN_init(&(ctx->RR));
 BN_init(&(ctx->N));
 BN_init(&(ctx->Ni));
 ctx->flags=0;
 }
