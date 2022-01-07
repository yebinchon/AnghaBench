
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* prp; } ;
struct TYPE_9__ {int used; scalar_t__ processed; int buffer; int finalised; TYPE_2__ cmac; } ;
typedef TYPE_3__ cf_cmac_stream ;
typedef int cf_blockwise_in_fn ;
struct TYPE_7__ {size_t blocksz; } ;


 int assert (int) ;
 int cf_blockwise_acc_pad (int ,scalar_t__*,size_t,int,int,int,scalar_t__,int ,TYPE_3__*) ;
 int cf_blockwise_accumulate_final (int ,scalar_t__*,size_t,int const*,size_t,int ,int ,TYPE_3__*) ;
 int cmac_process ;
 int cmac_process_final_nopad ;
 int cmac_process_final_pad ;

void cf_cmac_stream_update(cf_cmac_stream *ctx, const uint8_t *data, size_t len, int isfinal)
{
  size_t blocksz = ctx->cmac.prp->blocksz;
  cf_blockwise_in_fn final_fn = cmac_process;
  int needpad = 0;

  if (isfinal)
  {
    int whole_number_of_blocks = ((len + ctx->used) & 0xf) == 0;
    int empty_message = len == 0 && ctx->used == 0 && ctx->processed == 0;

    assert(!ctx->finalised);
    assert(len != 0 || empty_message);



    if (whole_number_of_blocks && !empty_message)
      final_fn = cmac_process_final_nopad;
    else
      needpad = 1;
  }


  cf_blockwise_accumulate_final(ctx->buffer, &ctx->used, blocksz,
                                data, len,
                                cmac_process,
                                final_fn, ctx);


  if (needpad)
  {
    cf_blockwise_acc_pad(ctx->buffer, &ctx->used, blocksz,
                         0x80, 0x00, 0x00, blocksz - ctx->used,
                         cmac_process_final_pad, ctx);
  }
}
