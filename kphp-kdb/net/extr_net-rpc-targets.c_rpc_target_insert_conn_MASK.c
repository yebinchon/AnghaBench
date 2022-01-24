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
struct tree_rpc_target {struct rpc_target* x; } ;
struct TYPE_3__ {scalar_t__ ip; } ;
struct rpc_target {int /*<<< orphan*/  inbound_num; struct connection* last; struct connection* first; TYPE_1__ PID; } ;
struct connection {struct connection* next; struct connection* prev; scalar_t__ target; } ;
struct TYPE_4__ {TYPE_1__ remote_pid; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct rpc_target* FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  rpc_target_tree ; 
 scalar_t__ rpc_targets_cur_host ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct tree_rpc_target* FUNC4 (int /*<<< orphan*/ ,struct rpc_target*) ; 

void FUNC5 (struct connection *c) {
  if (c->target) { return; }
  FUNC3 ();
  static struct rpc_target t;
  t.PID = FUNC0(c)->remote_pid;
  if (rpc_targets_cur_host && !t.PID.ip) {
    t.PID.ip = rpc_targets_cur_host;
  }
  struct tree_rpc_target *T = FUNC4 (rpc_target_tree, &t);
  struct rpc_target *S = T ? T->x : 0;
  if (!S) {
    S = FUNC2 (t.PID);
  }
  struct connection *d = S->first;
  while (d != (struct connection *)S) {
    if (d == c) {
      return;
    }
    d = d->next;
  }
  FUNC1 (!c->next);
  FUNC1 (!c->prev);
  c->next = (void *)S;
  c->prev = S->last;
  c->next->prev = c;
  c->prev->next = c;
  S->inbound_num ++;
}