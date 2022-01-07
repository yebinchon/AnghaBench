
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_PROXY_INDEX_MAGIC ;
 int* cur ;

void update_index (long long pos, unsigned crc32, int timestamp) {
  cur[0] = RPC_PROXY_INDEX_MAGIC;
  *(long long *)(cur + 1) = pos;
  cur[3] = crc32;
  cur[4] = timestamp;
}
