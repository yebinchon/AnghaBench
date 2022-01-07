
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t counter_offset; size_t counter_width; TYPE_1__* prp; } ;
typedef TYPE_2__ cf_ctr ;
struct TYPE_4__ {size_t blocksz; } ;


 int assert (int) ;

void cf_ctr_custom_counter(cf_ctr *ctx, size_t offset, size_t width)
{
  assert(ctx->prp->blocksz <= offset + width);
  ctx->counter_offset = offset;
  ctx->counter_width = width;
}
