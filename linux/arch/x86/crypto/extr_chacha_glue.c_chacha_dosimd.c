
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int CHACHA_BLOCK_SIZE ;
 int chacha_2block_xor_avx2 (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_2block_xor_avx512vl (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_4block_xor_avx2 (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_4block_xor_avx512vl (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_4block_xor_ssse3 (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_8block_xor_avx2 (scalar_t__*,int *,int const*,unsigned int,int) ;
 int chacha_8block_xor_avx512vl (scalar_t__*,int *,int const*,unsigned int,int) ;
 scalar_t__ chacha_advance (unsigned int,int) ;
 int chacha_block_xor_ssse3 (scalar_t__*,int *,int const*,unsigned int,int) ;
 scalar_t__ chacha_use_avx2 ;
 scalar_t__ chacha_use_avx512vl ;

__attribute__((used)) static void chacha_dosimd(u32 *state, u8 *dst, const u8 *src,
     unsigned int bytes, int nrounds)
{
 while (bytes >= CHACHA_BLOCK_SIZE * 4) {
  chacha_4block_xor_ssse3(state, dst, src, bytes, nrounds);
  bytes -= CHACHA_BLOCK_SIZE * 4;
  src += CHACHA_BLOCK_SIZE * 4;
  dst += CHACHA_BLOCK_SIZE * 4;
  state[12] += 4;
 }
 if (bytes > CHACHA_BLOCK_SIZE) {
  chacha_4block_xor_ssse3(state, dst, src, bytes, nrounds);
  state[12] += chacha_advance(bytes, 4);
  return;
 }
 if (bytes) {
  chacha_block_xor_ssse3(state, dst, src, bytes, nrounds);
  state[12]++;
 }
}
