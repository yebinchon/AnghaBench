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
struct rpc_target {struct connection* first; TYPE_1__* target; } ;
struct process_id {int dummy; } ;
struct connection {struct connection* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  remote_pid; } ;
struct TYPE_3__ {struct connection* first_conn; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int cr_ok ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct process_id*) ; 
 int FUNC3 (struct connection*) ; 

int FUNC4 (struct rpc_target *S, struct process_id *PID, int limit, struct connection *buf[]) {
  if (!S) {
    return 0;
  }
  struct connection *c;
  int pos = 0;
  int count = 0;
  int r;
  if (S->target) {
    for (c = S->target->first_conn; c != (struct connection *) (S->target); c = c->next) {
      r = FUNC3 (c);
      if ((r == cr_ok) && (!PID || FUNC2 (&FUNC0(c)->remote_pid, PID) >= 1)) {
        if (pos < limit) {
          buf[pos ++] = c;
        } else {
          int t = FUNC1 () % (count + 1);
          if (t < limit) {
            buf[t] = c;
          }
        }
        count ++;
      }
    }
  }
  for (c = S->first; c != (struct connection *) (S); c = c->next) {
    r = FUNC3 (c);
    if ((r == cr_ok) && (!PID || FUNC2 (&FUNC0(c)->remote_pid, PID) >= 1)) {
      if (pos < limit) {
        buf[pos ++] = c;
      } else {
        int t = FUNC1 () % (count + 1);
        if (t < limit) {
          buf[t] = c;
        }
      }
      count ++;
    }
  }
  return pos;
}