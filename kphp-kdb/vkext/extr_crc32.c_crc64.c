
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long crc64_partial (void const*,int,long long) ;

unsigned long long crc64 (const void *data, int len) {
  return crc64_partial (data, len, -1LL) ^ -1LL;
}
