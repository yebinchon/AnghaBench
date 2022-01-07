
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned crc32c_partial_sse42 (const void *data, int len, unsigned crc) {
  const char *p = data;
  unsigned long long c = crc;
  while ((((uintptr_t) data) & 7) && (len > 0)) {
    asm volatile (
       "crc32b (%2), %1\n\t"
     : "=r" (c)
     : "0" (c), "r" (p)
    );
    p++;
    len--;
  }
  while (len >= 8) {
    asm volatile (
       "crc32q (%2), %1\n\t"
     : "=r" (c)
     : "0" (c), "r" (p)
    );
    p += 8;
    len -= 8;
  }
  while (len > 0) {
    asm volatile (
       "crc32b (%2), %1\n\t"
     : "=r" (c)
     : "0" (c), "r" (p)
    );
    p++;
    len--;
  }
  return c;
}
