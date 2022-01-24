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
struct TYPE_2__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 int MAX_PACKET_LEN ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  cr_ok ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC7 (void *_R, struct connection *c) {
  int *R = _R;
  FUNC5 (4, "sending query... len = %d, op = %x\n", R[0], R[2]);
  FUNC5 (6, "c = %p, server_check_ready = %d (cr_ok = %d)\n", c, FUNC3 (c), cr_ok);
  FUNC1 (c && FUNC3 (c) == cr_ok);
  FUNC1 (R[0] <= MAX_PACKET_LEN && R[0] >= 16 && R[0] % 4 == 0);
  R[(R[0] >> 2) - 1] = FUNC2 (R, R[0] - 4);
  FUNC6 (&c->Out, R, R[0]);
  FUNC0(c)->flush_packet (c);
  FUNC5 (4, "message_sent\n");
  return 0;
}