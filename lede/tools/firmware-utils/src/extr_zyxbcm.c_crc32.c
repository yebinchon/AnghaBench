
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int* crc32tab ;

uint32_t crc32(uint32_t crc, uint8_t *data, size_t len)
{
 while (len--)
  crc = (crc >> 8) ^ crc32tab[(crc ^ *data++) & 0xFF];

 return crc;
}
