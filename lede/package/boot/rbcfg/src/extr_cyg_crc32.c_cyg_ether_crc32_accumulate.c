
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long cyg_uint32 ;


 long* crc32_tab ;

cyg_uint32
cyg_ether_crc32_accumulate(cyg_uint32 crc32val, unsigned char *s, int len)
{
  int i;

  if (s == 0) return 0L;

  crc32val = crc32val ^ 0xffffffff;
  for (i = 0; i < len; i++) {
      crc32val = crc32_tab[(crc32val ^ s[i]) & 0xff] ^ (crc32val >> 8);
  }
  return crc32val ^ 0xffffffff;
}
