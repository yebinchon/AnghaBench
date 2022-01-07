
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reduced_round_coll; } ;
typedef TYPE_1__ SHA1_CTX ;



void SHA1DCSetDetectReducedRoundCollision(SHA1_CTX* ctx, int reduced_round_coll)
{
 if (reduced_round_coll)
  ctx->reduced_round_coll = 1;
 else
  ctx->reduced_round_coll = 0;
}
