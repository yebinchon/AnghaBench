
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* s; } ;
typedef TYPE_1__ norx32_ctx ;


 size_t RATE_BYTES ;
 int RATE_WORDS ;
 size_t WORD_BYTES ;
 int assert (int) ;

__attribute__((used)) static void undo_padding(norx32_ctx *ctx, size_t bytes)
{
  assert(bytes < RATE_BYTES);
  ctx->s[bytes / WORD_BYTES] ^= 0x01 << ((bytes % WORD_BYTES) * 8);
  ctx->s[RATE_WORDS - 1] ^= 0x80000000;
}
