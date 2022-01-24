#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_2__ {int /*<<< orphan*/  out_packet_num; } ;

/* Variables and functions */
 unsigned int MAX_PACKET_PAYLOAD ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int* send_packet ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int) ; 

void FUNC6 (struct connection *c, int packet_bytes) {
  FUNC1 ((unsigned) packet_bytes <= MAX_PACKET_PAYLOAD);
  int pad_bytes = -packet_bytes & 3;
  char *ptr = (char *) send_packet + 8 + packet_bytes;
  FUNC4 (ptr, 0, pad_bytes);
  int plen = (packet_bytes + 12 + 3) >> 2;
  send_packet[0] = plen * 4;
  send_packet[1] = FUNC0(c)->out_packet_num++;
  send_packet[plen - 1] = FUNC2 (send_packet, plen * 4 - 4);
  FUNC1 (FUNC5 (&c->Out, send_packet, plen * 4) == plen * 4);
  FUNC3 (c);
  // RPCC_FUNC(c)->flush_packet(c);
}