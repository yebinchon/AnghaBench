
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_connection {int dummy; } ;
struct memcache_value {int dummy; } ;


 struct memcache_value do_memcache_act (struct rpc_connection*,long long,int,double) ;
 long long do_memcache_send_delete (struct rpc_connection*,char const*,int,double) ;

struct memcache_value do_memcache_delete (struct rpc_connection *c, const char *key, int key_len, double timeout) {
  long long qid = do_memcache_send_delete (c, key, key_len, timeout);
  return do_memcache_act (c, qid, 1, timeout);
}
