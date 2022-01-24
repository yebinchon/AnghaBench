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
 scalar_t__ packet_buffer ; 
 scalar_t__ packet_ptr ; 
 int /*<<< orphan*/  FUNC1 (int,char*,long long) ; 

void FUNC2 (long long x) {
  FUNC1 (4, "rpc_out_long (%lld)\n", x);
  FUNC0 (packet_ptr + 2 <= packet_buffer + PACKET_BUFFER_SIZE);
  *(long long *)packet_ptr = x;
  packet_ptr += 2;
}