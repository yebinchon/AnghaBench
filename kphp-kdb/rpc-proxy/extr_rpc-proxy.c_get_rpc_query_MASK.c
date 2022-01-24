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
struct rpc_query {int dummy; } ;
struct hash_elem_rpc_query {struct rpc_query* x; } ;

/* Variables and functions */
 struct hash_elem_rpc_query* FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  rpc_query_hash_table ; 

struct rpc_query *FUNC1 (long long qid) {
  struct hash_elem_rpc_query *T = FUNC0 (&rpc_query_hash_table, (void *)&qid);
  return T ? T->x : 0;
}