
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int const* crc32_table ;

__attribute__((used)) static inline uint32_t crc32_accumulate_8(const uint32_t crc, const uint8_t ch)
{
 return crc32_table[(crc ^ ch) & 0xff] ^ (crc >> 8);
}
