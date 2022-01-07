
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int dummy; } aegis_block ;
struct aegis_state {int * blocks; } ;


 scalar_t__ aegis128_do_simd () ;
 int crypto_aegis128_update (struct aegis_state*) ;
 int crypto_aegis128_update_simd (struct aegis_state*,union aegis_block const*) ;
 int crypto_aegis_block_xor (int *,union aegis_block const*) ;

__attribute__((used)) static void crypto_aegis128_update_a(struct aegis_state *state,
         const union aegis_block *msg)
{
 if (aegis128_do_simd()) {
  crypto_aegis128_update_simd(state, msg);
  return;
 }

 crypto_aegis128_update(state);
 crypto_aegis_block_xor(&state->blocks[0], msg);
}
