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
struct rpcx_data {int /*<<< orphan*/  out_packet_num; } ;
struct connection {int flags; int /*<<< orphan*/  Out; scalar_t__ custom_data; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int C_RAWMSG ; 
 int RPC_PING ; 
 int FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 

void FUNC5 (struct connection *c, long long ping_id) {
  if (!(c->flags & C_RAWMSG)) {
    FUNC3 (2, "Sending ping to fd=%d. ping_id = %lld\n", c->fd, ping_id);
    static int P[20];
    P[0] = 24;
    P[1] = ((struct rpcx_data *) ((c)->custom_data))->out_packet_num++;
    P[2] = RPC_PING;
    *(long long *)(P + 3) = ping_id;
    P[5] = FUNC0 (P, 20);
    FUNC4 (&c->Out, P, 24);
    FUNC1 (c);
  } else {
    static int P[20];
    P[0] = RPC_PING;
    *(long long *)(P + 1) = ping_id;
    FUNC2 (c, 12, P);
    FUNC1 (c);
  }
}