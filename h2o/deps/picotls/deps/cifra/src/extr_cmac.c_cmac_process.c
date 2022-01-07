
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* prp; } ;
struct TYPE_6__ {TYPE_2__ cmac; int processed; int cbc; } ;
typedef TYPE_3__ cf_cmac_stream ;
struct TYPE_4__ {scalar_t__ blocksz; } ;


 int CF_MAXBLOCK ;
 int cf_cbc_encrypt (int *,int const*,int *,int) ;

__attribute__((used)) static void cmac_process(void *vctx, const uint8_t *block)
{
  cf_cmac_stream *ctx = vctx;
  uint8_t output[CF_MAXBLOCK];
  cf_cbc_encrypt(&ctx->cbc, block, output, 1);
  ctx->processed += ctx->cmac.prp->blocksz;
}
