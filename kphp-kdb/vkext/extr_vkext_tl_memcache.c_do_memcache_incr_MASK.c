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
struct rpc_connection {int dummy; } ;
struct memcache_value {int dummy; } ;

/* Variables and functions */
 int MEMCACHE_DECR ; 
 int MEMCACHE_INCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct memcache_value FUNC1 (struct rpc_connection*,long long,int,double) ; 
 long long FUNC2 (struct rpc_connection*,char const*,int,long long,int,double) ; 

struct memcache_value FUNC3 (struct rpc_connection *c, const char *key, int key_len, long long val, int op, double timeout) {
  FUNC0 (op == MEMCACHE_INCR || op == MEMCACHE_DECR);
  long long qid = FUNC2 (c, key, key_len, val, op, timeout);
  return FUNC1 (c, qid, 1, timeout);
}