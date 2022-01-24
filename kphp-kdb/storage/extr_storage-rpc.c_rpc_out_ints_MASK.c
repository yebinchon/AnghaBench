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
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 scalar_t__ packet_buffer ; 
 scalar_t__ packet_ptr ; 

void FUNC2 (int *what, int len) {
  FUNC0 (packet_ptr + len <= packet_buffer + PACKET_BUFFER_SIZE);
  FUNC1 (packet_ptr, what, len * 4);
  packet_ptr += len;
}