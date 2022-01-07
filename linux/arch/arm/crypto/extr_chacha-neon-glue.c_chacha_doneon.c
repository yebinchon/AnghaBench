
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef scalar_t__ u32 ;


 int CHACHA_BLOCK_SIZE ;
 int chacha_4block_xor_neon (scalar_t__*,int const*,int const*,int) ;
 int chacha_block_xor_neon (scalar_t__*,int const*,int const*,int) ;
 int memcpy (int const*,int const*,unsigned int) ;

__attribute__((used)) static void chacha_doneon(u32 *state, u8 *dst, const u8 *src,
     unsigned int bytes, int nrounds)
{
 u8 buf[CHACHA_BLOCK_SIZE];

 while (bytes >= CHACHA_BLOCK_SIZE * 4) {
  chacha_4block_xor_neon(state, dst, src, nrounds);
  bytes -= CHACHA_BLOCK_SIZE * 4;
  src += CHACHA_BLOCK_SIZE * 4;
  dst += CHACHA_BLOCK_SIZE * 4;
  state[12] += 4;
 }
 while (bytes >= CHACHA_BLOCK_SIZE) {
  chacha_block_xor_neon(state, dst, src, nrounds);
  bytes -= CHACHA_BLOCK_SIZE;
  src += CHACHA_BLOCK_SIZE;
  dst += CHACHA_BLOCK_SIZE;
  state[12]++;
 }
 if (bytes) {
  memcpy(buf, src, bytes);
  chacha_block_xor_neon(state, buf, buf, nrounds);
  memcpy(dst, buf, bytes);
 }
}
