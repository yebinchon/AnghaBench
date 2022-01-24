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
struct raw_message {int total_bytes; } ;
struct connection {int /*<<< orphan*/  last_response_time; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int RPC_PING ; 
 int RPC_PONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  precise_now ; 
 int FUNC1 (struct raw_message*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int,int) ; 

int FUNC4 (struct connection *c, int op, struct raw_message *raw) {
  FUNC3 (1, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, raw->total_bytes);
  if (op == RPC_PING && raw->total_bytes == 12) {
    c->last_response_time = precise_now;    
    static int Q[12];
    FUNC0 (FUNC1 (raw, Q, 12) == 12);
    static int P[12];
    P[0] = RPC_PONG;    
    P[1] = Q[1];
    P[2] = Q[2];
    FUNC2 (c, 12, P);
    return 0;
  }
  return 0;
}