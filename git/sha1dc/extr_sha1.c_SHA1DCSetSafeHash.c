
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int safe_hash; } ;
typedef TYPE_1__ SHA1_CTX ;



void SHA1DCSetSafeHash(SHA1_CTX* ctx, int safehash)
{
 if (safehash)
  ctx->safe_hash = 1;
 else
  ctx->safe_hash = 0;
}
