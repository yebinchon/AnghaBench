
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_connection {int dummy; } ;
struct TYPE_3__ {char* data; void* len; } ;
struct TYPE_4__ {TYPE_1__ strval; } ;
struct memcache_value {TYPE_2__ val; void* type; } ;


 void* MEMCACHE_ERROR ;
 struct memcache_value do_memcache_parse_value () ;
 scalar_t__ do_rpc_flush (double) ;
 scalar_t__ do_rpc_get_and_parse (long long,double) ;
 void* global_error ;
 void* strlen (char*) ;

struct memcache_value do_memcache_act (struct rpc_connection *c, long long qid, int flags, double timeout) {
  struct memcache_value value;
  if (qid < 0) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = global_error;
    value.val.strval.len = value.val.strval.data ? strlen (value.val.strval.data) : 0;
    return value;
  }
  if ((flags & 1) && do_rpc_flush (timeout)) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = global_error;
    value.val.strval.len = value.val.strval.data ? strlen (value.val.strval.data) : 0;
    return value;
  }
  if (do_rpc_get_and_parse (qid, timeout) < 0) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = "timeout";
    value.val.strval.len = strlen (value.val.strval.data);
    return value;
  }
  return do_memcache_parse_value ();
}
