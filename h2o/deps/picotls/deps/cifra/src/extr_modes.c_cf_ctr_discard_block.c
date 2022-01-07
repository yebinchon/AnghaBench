
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nkeymat; } ;
typedef TYPE_1__ cf_ctr ;



void cf_ctr_discard_block(cf_ctr *ctx)
{
  ctx->nkeymat = 0;
}
