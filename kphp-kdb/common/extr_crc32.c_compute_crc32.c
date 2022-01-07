
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc32_partial (void const*,int,int) ;

unsigned compute_crc32 (const void *data, int len) {
  return crc32_partial (data, len, -1) ^ -1;
}
