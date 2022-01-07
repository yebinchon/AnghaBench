
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PACKET_BUFFER_SIZE ;
 int assert (int) ;
 int memcpy (char*,char const*,long) ;
 scalar_t__ packet_buffer ;
 int* packet_ptr ;
 int vkprintf (int,char*,long long) ;

void rpc_out_cstring (const char *str, long len) {
  vkprintf (4, "rpc_out_cstring (len: %lld)\n", (long long) len);
  assert (len >= 0 && len < (1 << 24));
  assert ((char *) packet_ptr + len + 8 < (char *) (packet_buffer + PACKET_BUFFER_SIZE));
  char *dest = (char *) packet_ptr;
  if (len < 254) {
    *dest++ = len;
  } else {
    *packet_ptr = (len << 8) + 0xfe;
    dest += 4;
  }
  memcpy (dest, str, len);
  dest += len;
  while ((long) dest & 3) {
    *dest++ = 0;
  }
  packet_ptr = (int *) dest;
}
