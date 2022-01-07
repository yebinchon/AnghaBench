
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aegis_state {TYPE_1__* blocks; } ;
struct TYPE_2__ {int bytes; } ;


 int AEGIS_BLOCK_SIZE ;
 scalar_t__ aegis128_do_simd () ;
 int crypto_aegis128_update (struct aegis_state*) ;
 int crypto_aegis128_update_simd (struct aegis_state*,void const*) ;
 int crypto_xor (int ,void const*,int ) ;

__attribute__((used)) static void crypto_aegis128_update_u(struct aegis_state *state, const void *msg)
{
 if (aegis128_do_simd()) {
  crypto_aegis128_update_simd(state, msg);
  return;
 }

 crypto_aegis128_update(state);
 crypto_xor(state->blocks[0].bytes, msg, AEGIS_BLOCK_SIZE);
}
