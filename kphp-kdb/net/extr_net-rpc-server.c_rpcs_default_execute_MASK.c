#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  fd; int /*<<< orphan*/  In; int /*<<< orphan*/  last_response_time; } ;
struct TYPE_4__ {int /*<<< orphan*/  out_packet_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
 int RPC_PING ; 
 int RPC_PONG ; 
 int SKIP_ALL_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*,int) ; 
 int /*<<< orphan*/  precise_now ; 
 int FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,long long,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC8 (struct connection *c, int op, int len) {
  FUNC6 (1, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  if (op == RPC_PING && len == 24) {
    c->last_response_time = precise_now;
    static int Q[12];
    FUNC2 (FUNC4 (&c->In, Q, 24) == 24);
    static int P[12];
    P[0] = 24;
    P[1] = FUNC0(c)->out_packet_num++;
    P[2] = RPC_PONG;    
    P[3] = Q[3];
    P[4] = Q[4];
    P[5] = FUNC3 (P, 20);
    FUNC6 (1, "Received ping from fd=%d. ping_id = %lld. Sending pong\n", c->fd, *(long long *)(Q + 3));
    FUNC7 (&c->Out, P, 24);
    FUNC1(c)->flush_packet(c);
    return 24;
  }
  return SKIP_ALL_BYTES;

}