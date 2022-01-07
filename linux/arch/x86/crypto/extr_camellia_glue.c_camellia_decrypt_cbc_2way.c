
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u128 ;


 int camellia_dec_blk_2way (void*,int *,int *) ;
 int u128_xor (int *,int *,int *) ;

void camellia_decrypt_cbc_2way(void *ctx, u128 *dst, const u128 *src)
{
 u128 iv = *src;

 camellia_dec_blk_2way(ctx, (u8 *)dst, (u8 *)src);

 u128_xor(&dst[1], &dst[1], &iv);
}
