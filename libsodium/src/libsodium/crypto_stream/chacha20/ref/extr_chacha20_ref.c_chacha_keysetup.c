
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {void** input; } ;
typedef TYPE_1__ chacha_ctx ;


 void* LOAD32_LE (int const*) ;
 void* U32C (int) ;

__attribute__((used)) static void
chacha_keysetup(chacha_ctx *ctx, const uint8_t *k)
{
    ctx->input[0] = U32C(0x61707865);
    ctx->input[1] = U32C(0x3320646e);
    ctx->input[2] = U32C(0x79622d32);
    ctx->input[3] = U32C(0x6b206574);
    ctx->input[4] = LOAD32_LE(k + 0);
    ctx->input[5] = LOAD32_LE(k + 4);
    ctx->input[6] = LOAD32_LE(k + 8);
    ctx->input[7] = LOAD32_LE(k + 12);
    ctx->input[8] = LOAD32_LE(k + 16);
    ctx->input[9] = LOAD32_LE(k + 20);
    ctx->input[10] = LOAD32_LE(k + 24);
    ctx->input[11] = LOAD32_LE(k + 28);
}
