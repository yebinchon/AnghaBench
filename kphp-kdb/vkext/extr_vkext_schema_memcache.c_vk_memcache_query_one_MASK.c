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
struct rpc_query {int /*<<< orphan*/  extra_free; void* extra; } ;
struct rpc_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _extra_dec_ref ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct rpc_query* FUNC3 (struct rpc_connection*,double) ; 
 void* FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  tmp ; 
 int /*<<< orphan*/  total_tl_working ; 

struct rpc_query *FUNC5 (struct rpc_connection *c, double timeout, zval **arr) {
  FUNC2 ();
  FUNC1 (tmp);
  void *res = FUNC4 (arr);
  FUNC0 (tmp);
  if (!res) { return 0; }
  struct rpc_query *q;
  if (!(q = FUNC3 (c, timeout))) {
    return 0;
  }
  q->extra = res;
  q->extra_free = _extra_dec_ref;
  total_tl_working ++;
  return q;
}