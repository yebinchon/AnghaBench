
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_query {long long qid; } ;
struct rpc_connection {int dummy; } ;


 int MEMCACHE_DELETE ;
 int do_rpc_clean () ;
 struct rpc_query* do_rpc_send_noflush (struct rpc_connection*,double) ;
 int do_rpc_store_header (int,int ) ;
 int do_rpc_store_int (int ) ;
 int do_rpc_store_string (char const*,int) ;

long long do_memcache_send_delete (struct rpc_connection *c, const char *key, int key_len, double timeout) {
  do_rpc_clean ();
  do_rpc_store_header (1, 0);
  do_rpc_store_int (MEMCACHE_DELETE);
  do_rpc_store_string (key, key_len);
  struct rpc_query *q;
  if (!(q = do_rpc_send_noflush (c, timeout))) {
    return -1;
  }
  return q->qid;
}
