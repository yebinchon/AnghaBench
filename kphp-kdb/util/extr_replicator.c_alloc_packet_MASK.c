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
 unsigned int MAX_PACKET_PAYLOAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* send_packet ; 

void *FUNC1 (int packet_bytes) {
  FUNC0 ((unsigned) packet_bytes <= MAX_PACKET_PAYLOAD);
  return send_packet + 2;
}