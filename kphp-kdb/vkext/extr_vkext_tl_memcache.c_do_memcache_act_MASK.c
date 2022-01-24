#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_connection {int dummy; } ;
struct TYPE_3__ {char* data; void* len; } ;
struct TYPE_4__ {TYPE_1__ strval; } ;
struct memcache_value {TYPE_2__ val; void* type; } ;

/* Variables and functions */
 void* MEMCACHE_ERROR ; 
 struct memcache_value FUNC0 () ; 
 scalar_t__ FUNC1 (double) ; 
 scalar_t__ FUNC2 (long long,double) ; 
 void* global_error ; 
 void* FUNC3 (char*) ; 

struct memcache_value FUNC4 (struct rpc_connection *c, long long qid, int flags, double timeout) {
  struct memcache_value value;
  if (qid < 0) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = global_error;
    value.val.strval.len = value.val.strval.data ? FUNC3 (value.val.strval.data) : 0;
    return value;
  }
  if ((flags & 1) && /*do_rpc_flush_server (c->server, timeout) < 0*/ FUNC1 (timeout)) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = global_error;
    value.val.strval.len = value.val.strval.data ? FUNC3 (value.val.strval.data) : 0;
    return value;
  }
  if (FUNC2 (qid, timeout) < 0) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = "timeout";
    value.val.strval.len = FUNC3 (value.val.strval.data);
    return value;
  }
  return FUNC0 ();
}