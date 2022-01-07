
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u128 ;
typedef int le128 ;


 int GLUE_FUNC_CAST (int ) ;
 int __serpent_encrypt ;
 int glue_xts_crypt_128bit_one (void*,int *,int const*,int *,int ) ;

void serpent_xts_enc(void *ctx, u128 *dst, const u128 *src, le128 *iv)
{
 glue_xts_crypt_128bit_one(ctx, dst, src, iv,
      GLUE_FUNC_CAST(__serpent_encrypt));
}
