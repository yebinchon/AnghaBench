
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u32 ;


 int CHACHA_BLOCK_SIZE ;
 int chacha_4block_xor_neon (int*,int const*,int const*,int,int) ;
 int chacha_block_xor_neon (int*,int const*,int const*,int) ;
 int memcpy (int const*,int const*,int) ;
 int min (int,int) ;

__attribute__((used)) static void chacha_doneon(u32 *state, u8 *dst, const u8 *src,
     int bytes, int nrounds)
{
 while (bytes > 0) {
  int l = min(bytes, CHACHA_BLOCK_SIZE * 5);

  if (l <= CHACHA_BLOCK_SIZE) {
   u8 buf[CHACHA_BLOCK_SIZE];

   memcpy(buf, src, l);
   chacha_block_xor_neon(state, buf, buf, nrounds);
   memcpy(dst, buf, l);
   state[12] += 1;
   break;
  }
  chacha_4block_xor_neon(state, dst, src, nrounds, l);
  bytes -= CHACHA_BLOCK_SIZE * 5;
  src += CHACHA_BLOCK_SIZE * 5;
  dst += CHACHA_BLOCK_SIZE * 5;
  state[12] += 5;
 }
}
