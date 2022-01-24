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
typedef  int /*<<< orphan*/  zval ;
struct tl_tree {int dummy; } ;
struct rpc_queue {int dummy; } ;
struct rpc_query {struct tl_tree* extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_tree*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (long long,double) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_queue*) ; 
 long long FUNC6 (struct rpc_queue*,double) ; 
 struct rpc_query* FUNC7 (long long) ; 
 int /*<<< orphan*/ ** FUNC8 (struct tl_tree*) ; 

void FUNC9 (struct rpc_queue *Q, double timeout, zval **r) {
  FUNC3 (*r);
  int size = 0;
  while (!FUNC5 (Q)) {
    long long qid = FUNC6 (Q, timeout);
    if (qid <= 0) {
      return;
    }
    struct rpc_query *q = FUNC7 (qid);
    struct tl_tree *T = q->extra;
    FUNC0 (T);
    
    if (FUNC4 (qid, timeout) < 0) {
      continue;
    }
    size ++;    
    zval **x = FUNC8 (T);
    if (x) {
      FUNC2 (*r, qid, *x);
    } else {
      FUNC1 (*r, qid, 0);
    }
  }
}