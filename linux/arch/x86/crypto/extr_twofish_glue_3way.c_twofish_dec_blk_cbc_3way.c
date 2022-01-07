
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u128 ;


 int twofish_dec_blk_3way (void*,int *,int *) ;
 int u128_xor (int *,int *,int *) ;

void twofish_dec_blk_cbc_3way(void *ctx, u128 *dst, const u128 *src)
{
 u128 ivs[2];

 ivs[0] = src[0];
 ivs[1] = src[1];

 twofish_dec_blk_3way(ctx, (u8 *)dst, (u8 *)src);

 u128_xor(&dst[1], &dst[1], &ivs[0]);
 u128_xor(&dst[2], &dst[2], &ivs[1]);
}
