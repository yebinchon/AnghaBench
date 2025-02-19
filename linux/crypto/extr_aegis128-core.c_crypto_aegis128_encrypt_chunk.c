
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union aegis_block {int const* bytes; } const aegis_block ;
typedef int const u8 ;
struct aegis_state {union aegis_block const* blocks; } ;


 scalar_t__ AEGIS_ALIGNED (int const*) ;
 unsigned int AEGIS_BLOCK_SIZE ;
 int crypto_aegis128_update_a (struct aegis_state*,union aegis_block const*) ;
 int crypto_aegis128_update_u (struct aegis_state*,int const*) ;
 int crypto_aegis_block_and (union aegis_block const*,union aegis_block const*) ;
 int crypto_aegis_block_xor (union aegis_block const*,union aegis_block const*) ;
 int crypto_xor (int const*,int const*,unsigned int) ;
 int memcpy (int const*,int const*,unsigned int) ;

__attribute__((used)) static void crypto_aegis128_encrypt_chunk(struct aegis_state *state, u8 *dst,
       const u8 *src, unsigned int size)
{
 union aegis_block tmp;

 if (AEGIS_ALIGNED(src) && AEGIS_ALIGNED(dst)) {
  while (size >= AEGIS_BLOCK_SIZE) {
   union aegis_block *dst_blk =
     (union aegis_block *)dst;
   const union aegis_block *src_blk =
     (const union aegis_block *)src;

   tmp = state->blocks[2];
   crypto_aegis_block_and(&tmp, &state->blocks[3]);
   crypto_aegis_block_xor(&tmp, &state->blocks[4]);
   crypto_aegis_block_xor(&tmp, &state->blocks[1]);
   crypto_aegis_block_xor(&tmp, src_blk);

   crypto_aegis128_update_a(state, src_blk);

   *dst_blk = tmp;

   size -= AEGIS_BLOCK_SIZE;
   src += AEGIS_BLOCK_SIZE;
   dst += AEGIS_BLOCK_SIZE;
  }
 } else {
  while (size >= AEGIS_BLOCK_SIZE) {
   tmp = state->blocks[2];
   crypto_aegis_block_and(&tmp, &state->blocks[3]);
   crypto_aegis_block_xor(&tmp, &state->blocks[4]);
   crypto_aegis_block_xor(&tmp, &state->blocks[1]);
   crypto_xor(tmp.bytes, src, AEGIS_BLOCK_SIZE);

   crypto_aegis128_update_u(state, src);

   memcpy(dst, tmp.bytes, AEGIS_BLOCK_SIZE);

   size -= AEGIS_BLOCK_SIZE;
   src += AEGIS_BLOCK_SIZE;
   dst += AEGIS_BLOCK_SIZE;
  }
 }

 if (size > 0) {
  union aegis_block msg = {};
  memcpy(msg.bytes, src, size);

  tmp = state->blocks[2];
  crypto_aegis_block_and(&tmp, &state->blocks[3]);
  crypto_aegis_block_xor(&tmp, &state->blocks[4]);
  crypto_aegis_block_xor(&tmp, &state->blocks[1]);

  crypto_aegis128_update_a(state, &msg);

  crypto_aegis_block_xor(&msg, &tmp);

  memcpy(dst, msg.bytes, size);
 }
}
