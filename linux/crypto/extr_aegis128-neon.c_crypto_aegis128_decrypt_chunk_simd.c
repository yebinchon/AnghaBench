
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int dummy; } aegis_block ;
typedef int u8 ;


 int crypto_aegis128_decrypt_chunk_neon (union aegis_block*,int *,int const*,unsigned int) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

void crypto_aegis128_decrypt_chunk_simd(union aegis_block *state, u8 *dst,
     const u8 *src, unsigned int size)
{
 kernel_neon_begin();
 crypto_aegis128_decrypt_chunk_neon(state, dst, src, size);
 kernel_neon_end();
}
