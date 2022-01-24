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
struct connection {int /*<<< orphan*/  Out; } ;
struct TYPE_4__ {int /*<<< orphan*/  out_packet_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* flush_packet ) (struct connection*) ;} ;

/* Variables and functions */
 int* P ; 
 TYPE_2__* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
 int RPC_INVOKE_REQ ; 
 int additional ; 
 int /*<<< orphan*/  auth_key_id ; 
 int FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ expect_input ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  msg_id ; 
 int /*<<< orphan*/  req_id ; 
 int /*<<< orphan*/  session_id ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (struct connection*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC8 (struct connection *c, int r) {
  req_id++;
  P[0] = 4 * (r + 6 + additional);
  P[1] = FUNC0(c)->out_packet_num++;
  P[2] = RPC_INVOKE_REQ;
  FUNC5 (&P[3], &req_id, 8);
  if (additional > 0) {
    FUNC5 (&P[5], &auth_key_id, 8);
    FUNC5 (&P[7], &session_id, 8);
    msg_id++;
    FUNC5 (&P[9], &msg_id, 8);
  }
  P[(P[0]/4)-1] = FUNC2 (P, P[0] - 4);
  FUNC7 (&c->Out, P, P[0]);
  FUNC1(c)->flush_packet(c);
  if (verbosity >= 4) {
    FUNC4 (stderr, "Sending:\n");
    FUNC3 (P);
  }
  expect_input = 0;
  return 0;
}