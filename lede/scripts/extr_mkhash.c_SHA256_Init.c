
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ count; } ;
typedef TYPE_1__ SHA256_CTX ;



__attribute__((used)) static void
SHA256_Init(SHA256_CTX * ctx)
{


 ctx->count = 0;


 ctx->state[0] = 0x6A09E667;
 ctx->state[1] = 0xBB67AE85;
 ctx->state[2] = 0x3C6EF372;
 ctx->state[3] = 0xA54FF53A;
 ctx->state[4] = 0x510E527F;
 ctx->state[5] = 0x9B05688C;
 ctx->state[6] = 0x1F83D9AB;
 ctx->state[7] = 0x5BE0CD19;
}
