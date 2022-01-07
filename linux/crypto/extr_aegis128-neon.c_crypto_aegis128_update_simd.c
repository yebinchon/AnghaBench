
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int dummy; } aegis_block ;


 int crypto_aegis128_update_neon (union aegis_block*,void const*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

void crypto_aegis128_update_simd(union aegis_block *state, const void *msg)
{
 kernel_neon_begin();
 crypto_aegis128_update_neon(state, msg);
 kernel_neon_end();
}
