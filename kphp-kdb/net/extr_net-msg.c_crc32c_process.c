
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc32c_partial (void const*,int,unsigned int) ;

void crc32c_process (void *extra, const void *data, int len) {
  unsigned crc32c = *(unsigned *)extra;
  *(unsigned *)extra = crc32c_partial (data, len, crc32c);
}
