
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_connection {int dummy; } ;
struct memcache_value {int dummy; } ;


 int MEMCACHE_DECR ;
 int MEMCACHE_INCR ;
 int assert (int) ;
 struct memcache_value do_memcache_act (struct rpc_connection*,long long,int,double) ;
 long long do_memcache_send_incr (struct rpc_connection*,char const*,int,long long,int,double) ;

struct memcache_value do_memcache_incr (struct rpc_connection *c, const char *key, int key_len, long long val, int op, double timeout) {
  assert (op == MEMCACHE_INCR || op == MEMCACHE_DECR);
  long long qid = do_memcache_send_incr (c, key, key_len, val, op, timeout);
  return do_memcache_act (c, qid, 1, timeout);
}
