
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct salsa20_ctx {int initial_state; } ;


 int get_unaligned_le32 (int const*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void salsa20_init(u32 *state, const struct salsa20_ctx *ctx,
    const u8 *iv)
{
 memcpy(state, ctx->initial_state, sizeof(ctx->initial_state));
 state[6] = get_unaligned_le32(iv + 0);
 state[7] = get_unaligned_le32(iv + 4);
}
