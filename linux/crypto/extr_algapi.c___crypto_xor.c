
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int CONFIG_64BIT ;
 int CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS ;
 scalar_t__ IS_ENABLED (int ) ;
 int __ffs (int) ;

void __crypto_xor(u8 *dst, const u8 *src1, const u8 *src2, unsigned int len)
{
 int relalign = 0;

 if (!IS_ENABLED(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)) {
  int size = sizeof(unsigned long);
  int d = (((unsigned long)dst ^ (unsigned long)src1) |
    ((unsigned long)dst ^ (unsigned long)src2)) &
   (size - 1);

  relalign = d ? 1 << __ffs(d) : size;







  while (((unsigned long)dst & (relalign - 1)) && len > 0) {
   *dst++ = *src1++ ^ *src2++;
   len--;
  }
 }

 while (IS_ENABLED(CONFIG_64BIT) && len >= 8 && !(relalign & 7)) {
  *(u64 *)dst = *(u64 *)src1 ^ *(u64 *)src2;
  dst += 8;
  src1 += 8;
  src2 += 8;
  len -= 8;
 }

 while (len >= 4 && !(relalign & 3)) {
  *(u32 *)dst = *(u32 *)src1 ^ *(u32 *)src2;
  dst += 4;
  src1 += 4;
  src2 += 4;
  len -= 4;
 }

 while (len >= 2 && !(relalign & 1)) {
  *(u16 *)dst = *(u16 *)src1 ^ *(u16 *)src2;
  dst += 2;
  src1 += 2;
  src2 += 2;
  len -= 2;
 }

 while (len--)
  *dst++ = *src1++ ^ *src2++;
}
