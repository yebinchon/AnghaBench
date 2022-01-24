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
struct process_id {int dummy; } ;
struct rpc_target {scalar_t__ inbound_num; struct connection* last; struct connection* first; scalar_t__ target; struct process_id PID; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rpc_target_tree ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rpc_target*,int /*<<< orphan*/ ) ; 
 struct rpc_target* FUNC2 (int) ; 

struct rpc_target *FUNC3 (struct process_id PID) {
  struct rpc_target *S = FUNC2 (sizeof (*S));
  S->PID = PID;
  S->target = 0;
  S->first = S->last = (struct connection *)S;
  S->inbound_num = 0;
  rpc_target_tree = FUNC1 (rpc_target_tree, S, FUNC0 ());
  return S;
}