
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ norx32_ctx ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ blockctx ;


 int RATE_WORDS ;
 int WORD_BYTES ;
 int read32_le (int const*) ;

__attribute__((used)) static void input_block_final(void *vctx, const uint8_t *data)
{
  blockctx *bctx = vctx;
  norx32_ctx *ctx = bctx->ctx;


  for (int i = 0; i < RATE_WORDS; i++)
  {
    ctx->s[i] ^= read32_le(data);
    data += WORD_BYTES;
  }
}
