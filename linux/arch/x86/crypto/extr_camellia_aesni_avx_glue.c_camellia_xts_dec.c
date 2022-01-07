
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u128 ;
typedef int le128 ;


 int GLUE_FUNC_CAST (int ) ;
 int camellia_dec_blk ;
 int glue_xts_crypt_128bit_one (void*,int *,int const*,int *,int ) ;

void camellia_xts_dec(void *ctx, u128 *dst, const u128 *src, le128 *iv)
{
 glue_xts_crypt_128bit_one(ctx, dst, src, iv,
      GLUE_FUNC_CAST(camellia_dec_blk));
}
