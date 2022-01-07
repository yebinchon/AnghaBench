
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t depth; int tos; int * pos; } ;
typedef TYPE_1__ BN_CTX ;


 size_t BN_CTX_NUM_POS ;

void BN_CTX_start(BN_CTX *ctx)
 {
 if (ctx->depth < BN_CTX_NUM_POS)
  ctx->pos[ctx->depth] = ctx->tos;
 ctx->depth++;
 }
