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
struct rpc_forward_query {struct rpc_forward_query* next; } ;

/* Variables and functions */
 struct rpc_forward_query forward_queries ; 
 scalar_t__ FUNC0 (struct rpc_forward_query*,double) ; 
 double FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static int FUNC3 (void) {
  struct rpc_forward_query *q = forward_queries.next;
  if (q == &forward_queries) {
    return 0;
  }
  int sum = 0;
  double t = FUNC1 ();
  while (q != &forward_queries) {
    struct rpc_forward_query *w = q->next;
    sum += FUNC0 (q, t);
    q = w;
  }
  if (sum) {
    FUNC2 (2, "forward_query_check_all_completion returns %d.\n", sum);
  }
  return sum;
}