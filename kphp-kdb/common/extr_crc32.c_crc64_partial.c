
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long* crc64_table ;

unsigned long long crc64_partial (const void *data, int len, unsigned long long crc) {
  const char *p = data;
  for (; len > 0; len--) {
    crc = crc64_table[(crc ^ *p++) & 0xff] ^ (crc >> 8);
  }
  return crc;
}
