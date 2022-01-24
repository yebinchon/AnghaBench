#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ PACKET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,long) ; 
 scalar_t__ packet_buffer ; 
 int* packet_ptr ; 
 int /*<<< orphan*/  FUNC2 (int,char*,long long) ; 

void FUNC3 (const char *str, long len) {
  FUNC2 (4, "rpc_out_cstring (len: %lld)\n", (long long) len);
  FUNC0 (len >= 0 && len < (1 << 24));
  FUNC0 ((char *) packet_ptr + len + 8 < (char *) (packet_buffer + PACKET_BUFFER_SIZE));
  char *dest = (char *) packet_ptr;
  if (len < 254) {
    *dest++ = len;
  } else {
    *packet_ptr = (len << 8) + 0xfe;
    dest += 4;
  }
  FUNC1 (dest, str, len);
  dest += len;
  while ((long) dest & 3) {
    *dest++ = 0;
  }
  packet_ptr = (int *) dest;
}