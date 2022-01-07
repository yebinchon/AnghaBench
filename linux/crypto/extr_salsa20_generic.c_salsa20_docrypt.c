
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int SALSA20_BLOCK_SIZE ;
 int crypto_xor_cpy (int *,int const*,int const*,unsigned int) ;
 int salsa20_block (int *,int *) ;

__attribute__((used)) static void salsa20_docrypt(u32 *state, u8 *dst, const u8 *src,
       unsigned int bytes)
{
 __le32 stream[SALSA20_BLOCK_SIZE / sizeof(__le32)];

 while (bytes >= SALSA20_BLOCK_SIZE) {
  salsa20_block(state, stream);
  crypto_xor_cpy(dst, src, (const u8 *)stream,
          SALSA20_BLOCK_SIZE);
  bytes -= SALSA20_BLOCK_SIZE;
  dst += SALSA20_BLOCK_SIZE;
  src += SALSA20_BLOCK_SIZE;
 }
 if (bytes) {
  salsa20_block(state, stream);
  crypto_xor_cpy(dst, src, (const u8 *)stream, bytes);
 }
}
