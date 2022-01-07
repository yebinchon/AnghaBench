
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ubc_check; } ;
typedef TYPE_1__ SHA1_CTX ;



void SHA1DCSetUseUBC(SHA1_CTX* ctx, int ubc_check)
{
 if (ubc_check)
  ctx->ubc_check = 1;
 else
  ctx->ubc_check = 0;
}
