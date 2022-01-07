
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline void
crc32_filltable(uint32_t *crc_table)
{
 uint32_t polynomial = 0xedb88320;
 uint32_t c;
 int i, j;

 for (i = 0; i < 256; i++) {
  c = i;
  for (j = 8; j; j--)
   c = (c&1) ? ((c >> 1) ^ polynomial) : (c >> 1);

  *crc_table++ = c;
 }
}
