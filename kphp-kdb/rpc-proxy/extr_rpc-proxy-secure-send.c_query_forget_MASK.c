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
struct secure_send_extra {int /*<<< orphan*/  binlog_pos; } ;
struct rpc_query {struct secure_send_extra* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct rpc_query* FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_query*) ; 

void FUNC3 (long long qid) {
  struct rpc_query *q = FUNC1 (qid);    
  if (!q) { return; }
  struct secure_send_extra *E = q->extra;
  FUNC0 (E->binlog_pos, 1);
  FUNC2 (q);
}