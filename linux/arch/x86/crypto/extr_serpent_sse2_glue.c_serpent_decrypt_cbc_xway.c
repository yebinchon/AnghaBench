
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u128 ;


 int SERPENT_PARALLEL_BLOCKS ;
 int serpent_dec_blk_xway (void*,int *,int *) ;
 int u128_xor (int *,int *,int *) ;

__attribute__((used)) static void serpent_decrypt_cbc_xway(void *ctx, u128 *dst, const u128 *src)
{
 u128 ivs[SERPENT_PARALLEL_BLOCKS - 1];
 unsigned int j;

 for (j = 0; j < SERPENT_PARALLEL_BLOCKS - 1; j++)
  ivs[j] = src[j];

 serpent_dec_blk_xway(ctx, (u8 *)dst, (u8 *)src);

 for (j = 0; j < SERPENT_PARALLEL_BLOCKS - 1; j++)
  u128_xor(dst + (j + 1), dst + (j + 1), ivs + j);
}
