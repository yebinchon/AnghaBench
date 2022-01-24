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
struct connection {int /*<<< orphan*/  last_query_sent_time; scalar_t__ Tmp; int /*<<< orphan*/  Out; } ;
struct conn_target {int custom_field; } ;
struct conn_query {int custom_type; } ;
struct TYPE_2__ {scalar_t__ get_timeout; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 scalar_t__ MAX_CLUSTER_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct conn_query* FUNC2 (struct connection*,struct connection*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 struct connection** get_connection ; 
 struct conn_target** get_target ; 
 struct connection* FUNC4 (struct conn_target*) ; 
 scalar_t__ get_targets ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

struct connection *FUNC6 (struct conn_target *S, struct connection *c) {
  struct connection *d;
  int x;
  if (S->custom_field) {
    x = S->custom_field;
    if (x < 0) {
      x = -x;
    }
    x--;
    FUNC1 ((unsigned) x < (unsigned) get_targets);
    FUNC1 (get_target[x] == S);
    d = get_connection[x];
    if (S->custom_field > 0) {
      S->custom_field = - S->custom_field;
      FUNC5 (&d->Out, "\r\n", 2);
      /* create query structure related to c & d */
      struct conn_query *Q = FUNC2 (d, c, CC->get_timeout + 0.2);
      if (/* !i && */ c->Tmp) {
        Q->custom_type |= 0x1000;
      }
      FUNC3 (d);
      d->last_query_sent_time = precise_now;
      FUNC0 (d, CC->get_timeout);
    } else {
    }
  } else {
    d = FUNC4 (S);
    if (!d) {
      return 0;
    }
    FUNC1 (get_targets < MAX_CLUSTER_SERVERS);
    x = get_targets++;
    S->custom_field = -(x+1);
    get_target[x] = S;
    get_connection[x] = d;
  }
  return d;
}