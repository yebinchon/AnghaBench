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
struct rpc_query {long long qid; } ;
struct rpc_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCACHE_GET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct rpc_query* FUNC1 (struct rpc_connection*,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 

long long FUNC4 (struct rpc_connection *c, const char *key, int key_len, double timeout) {
  FUNC0 ();
//  do_rpc_store_header (1, 0);
  FUNC2 (MEMCACHE_GET);
  FUNC3 (key, key_len);
  struct rpc_query *q;
  if (!(q = FUNC1 (c, timeout))) {
    return -1;
  }
  return q->qid;
}