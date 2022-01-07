
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {long long qid; } ;
struct rpc_connection {int dummy; } ;


 int do_rpc_clean () ;
 struct rpc_query* do_rpc_send_noflush (struct rpc_connection*,double) ;
 int do_rpc_store_int (int) ;
 int do_rpc_store_long (long long) ;
 int do_rpc_store_string (char const*,int) ;

long long do_memcache_send_incr (struct rpc_connection *c, const char *key, int key_len, long long val, int op, double timeout) {
  do_rpc_clean ();

  do_rpc_store_int (op);
  do_rpc_store_string (key, key_len);
  do_rpc_store_long (val);
  struct rpc_query *q;
  if (!(q = do_rpc_send_noflush (c, timeout))) {
    return -1;
  }
  return q->qid;
}
