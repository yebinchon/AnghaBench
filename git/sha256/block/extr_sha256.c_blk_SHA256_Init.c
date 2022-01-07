
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ size; scalar_t__ offset; } ;
typedef TYPE_1__ blk_SHA256_CTX ;



void blk_SHA256_Init(blk_SHA256_CTX *ctx)
{
 ctx->offset = 0;
 ctx->size = 0;
 ctx->state[0] = 0x6a09e667ul;
 ctx->state[1] = 0xbb67ae85ul;
 ctx->state[2] = 0x3c6ef372ul;
 ctx->state[3] = 0xa54ff53aul;
 ctx->state[4] = 0x510e527ful;
 ctx->state[5] = 0x9b05688cul;
 ctx->state[6] = 0x1f83d9abul;
 ctx->state[7] = 0x5be0cd19ul;
}
