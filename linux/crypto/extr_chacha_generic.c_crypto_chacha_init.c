
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct chacha_ctx {int* key; } ;


 int get_unaligned_le32 (int const*) ;

void crypto_chacha_init(u32 *state, const struct chacha_ctx *ctx, const u8 *iv)
{
 state[0] = 0x61707865;
 state[1] = 0x3320646e;
 state[2] = 0x79622d32;
 state[3] = 0x6b206574;
 state[4] = ctx->key[0];
 state[5] = ctx->key[1];
 state[6] = ctx->key[2];
 state[7] = ctx->key[3];
 state[8] = ctx->key[4];
 state[9] = ctx->key[5];
 state[10] = ctx->key[6];
 state[11] = ctx->key[7];
 state[12] = get_unaligned_le32(iv + 0);
 state[13] = get_unaligned_le32(iv + 4);
 state[14] = get_unaligned_le32(iv + 8);
 state[15] = get_unaligned_le32(iv + 12);
}
