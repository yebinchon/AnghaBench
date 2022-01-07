
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ depth; int flags; int * bn; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_CTX_NUM ;
 int BN_FLG_MALLOCED ;
 int BN_clear_free (int *) ;
 int assert (int) ;
 int free (TYPE_1__*) ;

void BN_CTX_free(BN_CTX *ctx)
 {
 int i;

 if (ctx == ((void*)0)) return;
 assert(ctx->depth == 0);

 for (i=0; i < BN_CTX_NUM; i++)
  BN_clear_free(&(ctx->bn[i]));
 if (ctx->flags & BN_FLG_MALLOCED)
  free(ctx);
 }
