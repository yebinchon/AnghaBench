
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* crc32_table ;

unsigned crc32_partial_old (const void *data, int len, unsigned crc) {
  const char *p = data;
  for (; len > 0; len--) {
    crc = crc32_table[(crc ^ *p++) & 0xff] ^ (crc >> 8);
  }
  return crc;
}
