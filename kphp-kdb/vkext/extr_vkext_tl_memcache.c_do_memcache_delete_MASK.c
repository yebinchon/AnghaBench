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
 struct memcache_value FUNC0 (struct rpc_connection*,long long,int,double) ; 
 long long FUNC1 (struct rpc_connection*,char const*,int,double) ; 

struct memcache_value FUNC2 (struct rpc_connection *c, const char *key, int key_len, double timeout) {
  long long qid = FUNC1 (c, key, key_len, timeout);
  return FUNC0 (c, qid, 1, timeout);
}