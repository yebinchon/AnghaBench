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
struct rpc_query {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 int /*<<< orphan*/  active_queries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_query*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rpc_query_hash_table ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_query*,int) ; 

void FUNC3 (struct rpc_query *q) {
  FUNC1 (&q->ev); 
  FUNC0 (&rpc_query_hash_table, q);
  FUNC2 (q, sizeof (*q));
  active_queries --;
}