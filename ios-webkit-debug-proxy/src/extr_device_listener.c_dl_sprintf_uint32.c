
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int8_t ;



char *dl_sprintf_uint32(char *buf, uint32_t value) {
  char *tail = buf;
  int8_t i;
  for (i = 0; i < 4; i++) {
    *tail++ = (unsigned char)((value >> (i<<3)) & 0xFF);
  }
  return tail;
}
