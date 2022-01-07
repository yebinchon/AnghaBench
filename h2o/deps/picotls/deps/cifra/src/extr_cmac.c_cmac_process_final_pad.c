
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int P; } ;
struct TYPE_5__ {int finalised; TYPE_1__ cmac; } ;
typedef TYPE_2__ cf_cmac_stream ;


 int cmac_process_final (TYPE_2__*,int const*,int ) ;

__attribute__((used)) static void cmac_process_final_pad(void *vctx, const uint8_t *block)
{
  cf_cmac_stream *ctx = vctx;
  cmac_process_final(ctx, block, ctx->cmac.P);
  ctx->finalised = 1;
}
