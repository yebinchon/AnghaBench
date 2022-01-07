
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct rpc_query {int extra_free; void* extra; } ;
struct rpc_connection {int dummy; } ;


 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int _extra_dec_ref ;
 int do_rpc_clean () ;
 struct rpc_query* do_rpc_send_noflush (struct rpc_connection*,double) ;
 void* store_function (int **) ;
 int tmp ;
 int total_tl_working ;

struct rpc_query *vk_memcache_query_one (struct rpc_connection *c, double timeout, zval **arr) {
  do_rpc_clean ();
  START_TIMER (tmp);
  void *res = store_function (arr);
  END_TIMER (tmp);
  if (!res) { return 0; }
  struct rpc_query *q;
  if (!(q = do_rpc_send_noflush (c, timeout))) {
    return 0;
  }
  q->extra = res;
  q->extra_free = _extra_dec_ref;
  total_tl_working ++;
  return q;
}
