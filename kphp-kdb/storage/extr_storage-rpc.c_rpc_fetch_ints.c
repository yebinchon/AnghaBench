
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (int*,scalar_t__,int) ;
 scalar_t__ packet_end ;
 scalar_t__ packet_ptr ;

int rpc_fetch_ints (int *a, int len) {
  if (packet_ptr + len > packet_end) {
    return -1;
  }
  memcpy (a, packet_ptr, len * 4);
  packet_ptr += len;
  return 0;
}
