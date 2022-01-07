
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __crc32c_le (int ,unsigned char const*,unsigned int) ;
 int crc32c_sparc64 (int *,int const*,unsigned int) ;

__attribute__((used)) static void crc32c_compute(u32 *crcp, const u64 *data, unsigned int len)
{
 unsigned int asm_len;

 asm_len = len & ~7U;
 if (asm_len) {
  crc32c_sparc64(crcp, data, asm_len);
  data += asm_len / 8;
  len -= asm_len;
 }
 if (len)
  *crcp = __crc32c_le(*crcp, (const unsigned char *) data, len);
}
