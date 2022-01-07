
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;
typedef int int8_t ;



uint32_t dl_sscanf_uint32(const char *buf) {
  uint32_t ret = 0;
  const char *tail = buf;
  int8_t i;
  for (i = 0; i < 4; i++) {
    ret |= ((((unsigned char) *tail++) & 0xFF) << (i<<3));
  }
  return ret;
}
