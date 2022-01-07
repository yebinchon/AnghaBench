
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int dummy; } aegis_block ;
typedef int u8 ;
struct aegis_state {int dummy; } ;


 scalar_t__ AEGIS_ALIGNED (int const*) ;
 unsigned int AEGIS_BLOCK_SIZE ;
 int crypto_aegis128_update_a (struct aegis_state*,union aegis_block const*) ;
 int crypto_aegis128_update_u (struct aegis_state*,int const*) ;

__attribute__((used)) static void crypto_aegis128_ad(struct aegis_state *state,
          const u8 *src, unsigned int size)
{
 if (AEGIS_ALIGNED(src)) {
  const union aegis_block *src_blk =
    (const union aegis_block *)src;

  while (size >= AEGIS_BLOCK_SIZE) {
   crypto_aegis128_update_a(state, src_blk);

   size -= AEGIS_BLOCK_SIZE;
   src_blk++;
  }
 } else {
  while (size >= AEGIS_BLOCK_SIZE) {
   crypto_aegis128_update_u(state, src);

   size -= AEGIS_BLOCK_SIZE;
   src += AEGIS_BLOCK_SIZE;
  }
 }
}
