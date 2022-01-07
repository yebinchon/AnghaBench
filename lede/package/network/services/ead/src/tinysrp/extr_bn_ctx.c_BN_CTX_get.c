
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; scalar_t__ tos; int too_many; int * bn; } ;
typedef TYPE_1__ BN_CTX ;
typedef int BIGNUM ;


 scalar_t__ BN_CTX_NUM ;
 scalar_t__ BN_CTX_NUM_POS ;

BIGNUM *BN_CTX_get(BN_CTX *ctx)
 {
 if (ctx->depth > BN_CTX_NUM_POS || ctx->tos >= BN_CTX_NUM)
  {
  if (!ctx->too_many)
   {

   ctx->too_many = 1;
   }
  return ((void*)0);
  }
 return (&(ctx->bn[ctx->tos++]));
 }
