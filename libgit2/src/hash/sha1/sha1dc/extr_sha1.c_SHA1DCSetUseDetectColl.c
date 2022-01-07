
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int detect_coll; } ;
typedef TYPE_1__ SHA1_CTX ;



void SHA1DCSetUseDetectColl(SHA1_CTX* ctx, int detect_coll)
{
 if (detect_coll)
  ctx->detect_coll = 1;
 else
  ctx->detect_coll = 0;
}
