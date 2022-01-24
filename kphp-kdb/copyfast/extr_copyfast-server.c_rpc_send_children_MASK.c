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
struct rpc_children_answer {int children_num; long long id; int /*<<< orphan*/  children; } ;
struct node {int dummy; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_CHILDREN_ANSWER ; 
 int /*<<< orphan*/  children_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_children_answer*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rpc_children_answer*,struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC5 (struct connection *c, long long id) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_children\n");
  }
  int x = FUNC1 (id);
  if (x < 0) {
    return 0;
  }
  struct rpc_children_answer *T = (struct rpc_children_answer *)Q;
  FUNC3 (T, sizeof (struct rpc_children_answer) + x * sizeof (struct node), c, RPC_TYPE_CHILDREN_ANSWER);
  FUNC2 (T->children, children_list, x * sizeof (struct node));
  T->children_num = x;
  T->id = id;
  return FUNC4 (T, c);
}