
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* crc32_table ;

__attribute__((used)) static inline uint32_t
crc32(uint32_t val, const void *ss, int len)
{
 const unsigned char *s = ss;
 while (--len >= 0)
  val = crc32_table[(val ^ *s++) & 0xff] ^ (val >> 8);
 return val;
}
