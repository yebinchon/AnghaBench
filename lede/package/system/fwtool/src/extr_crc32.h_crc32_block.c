
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
crc32_block(uint32_t val, const void *buf, unsigned len, uint32_t *crc_table)
{
 const void *end = (uint8_t*)buf + len;

 while (buf != end) {
  val = crc_table[(uint8_t)val ^ *(uint8_t*)buf] ^ (val >> 8);
  buf = (uint8_t*)buf + 1;
 }
 return val;
}
