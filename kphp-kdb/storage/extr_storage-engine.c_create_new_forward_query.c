
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_get_file_data {int dummy; } ;
struct rpc_forward_query {struct rpc_forward_query* next; struct rpc_forward_query* prev; scalar_t__ deadline; struct rpc_get_file_data* L; } ;


 scalar_t__ connect_timeout ;
 struct rpc_forward_query forward_queries ;
 scalar_t__ get_utime_monotonic () ;
 int vkprintf (int,char*,struct rpc_get_file_data*) ;
 struct rpc_forward_query* zmalloc0 (int) ;

__attribute__((used)) static void create_new_forward_query (struct rpc_get_file_data *L) {
  vkprintf (3, "create_new_forward_query (%p)\n", L);
  struct rpc_forward_query *q = zmalloc0 (sizeof (struct rpc_forward_query));
  q->L = L;
  q->deadline = get_utime_monotonic () + connect_timeout;
  struct rpc_forward_query *v = &forward_queries, *u = forward_queries.prev;
  u->next = q; q->prev = u;
  v->prev = q; q->next = v;
}
