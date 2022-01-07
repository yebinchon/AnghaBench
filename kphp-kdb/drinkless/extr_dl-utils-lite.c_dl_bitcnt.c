
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* dl_bitcnt16 ;

int dl_bitcnt (unsigned int x) {
  return dl_bitcnt16[x & 0xFFFF] + dl_bitcnt16[x >> 16];
}
