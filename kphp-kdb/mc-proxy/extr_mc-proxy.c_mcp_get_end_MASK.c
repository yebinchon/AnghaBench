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
struct connection {int /*<<< orphan*/  last_query_sent_time; scalar_t__ Tmp; int /*<<< orphan*/  Out; int /*<<< orphan*/  status; } ;
struct conn_query {int custom_type; } ;
struct TYPE_4__ {scalar_t__ get_timeout; } ;
struct TYPE_3__ {int custom_field; } ;

/* Variables and functions */
 TYPE_2__* CC ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  conn_wait_net ; 
 struct conn_query* FUNC1 (struct connection*,struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct connection*) ; 
 struct connection** get_connection ; 
 TYPE_1__** get_target ; 
 int get_targets ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC7 (struct connection *c, int key_count) {
  int i;
  struct connection *d;
  if (verbosity > 1) {
    FUNC3 (stderr, "proxy_get_end (%d)\n", key_count);
  }
  if (!get_targets) {
    FUNC4 (c);
    FUNC6 (&c->Out, "END\r\n", 5);
    return 0;
  }
  c->status = conn_wait_net;

  for (i = 0; i < get_targets; i++) {
    struct conn_query *Q;
    int x = get_target[i]->custom_field;
    get_target[i]->custom_field = 0;

    if (x > 0) {
      d = get_connection[i];
      FUNC6 (&d->Out, "\r\n", 2);
      /* create query structure related to c & d */
      Q = FUNC1 (d, c, CC->get_timeout + 0.2);
      if (/* !i && */ c->Tmp) {
        Q->custom_type |= 0x1000;
      }
      FUNC2 (d);
      d->last_query_sent_time = precise_now;
      FUNC0 (d, CC->get_timeout);
    }
  }
  FUNC5 (c, CC->get_timeout);
  FUNC4 (c);
  return 0;
}