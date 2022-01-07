
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server_collection {int num; int * servers; } ;
struct rpc_connection {long long default_actor_id; double default_query_timeout; struct rpc_server_collection* servers; scalar_t__ fd; } ;


 int ADD_CNT (int ) ;
 int ADD_PREALLOC (int,int) ;
 int END_TIMER (int ) ;
 int START_TIMER (int ) ;
 int assert (struct rpc_server_collection*) ;
 int connect ;
 int last_connection_fd ;
 int lrand48 () ;
 int rpc_connection_tree ;
 struct rpc_server_collection* rpc_find_persistent (unsigned int,int,double,double) ;
 scalar_t__ rpc_open (int ,char**,int*) ;
 int rpc_server_new (unsigned int,int,double,double) ;
 int tree_insert_connection (int ,struct rpc_connection*,int ) ;
 struct rpc_connection* zzmalloc (int) ;
 int * zzrealloc (int *,int,int) ;

struct rpc_connection *do_new_rpc_connection (unsigned host, int port, int num, long long default_actor_id, double default_query_timeout, double connect_timeout, double retry_timeout, char **error, int *errnum) {
  ADD_CNT (connect);
  START_TIMER (connect);
  struct rpc_server_collection *servers = rpc_find_persistent (host, port, connect_timeout, retry_timeout);
  assert (servers);
  if (servers->num < num) {

    servers->servers = zzrealloc (servers->servers, servers->num * sizeof (void *), num * sizeof (void *));

    ADD_PREALLOC (servers->num * sizeof (void *), num * sizeof (void *));
    int i;
    for (i = servers->num; i < num; i++) {
      servers->servers[i] = rpc_server_new (host, port, default_query_timeout, retry_timeout);
    }
    servers->num = num;
  }

  int i;
  int cc = 0;
  for (i = 0; i < servers->num; i++) {
    if (rpc_open (servers->servers[i], error, errnum) >= 0) {
      cc ++;
    }
  }
  if (!cc) {
    END_TIMER (connect);
    return 0;
  }

  struct rpc_connection *c = zzmalloc (sizeof (*c));
  c->fd = last_connection_fd ++;
  c->servers = servers;
  c->default_actor_id = default_actor_id;
  c->default_query_timeout = default_query_timeout;
  rpc_connection_tree = tree_insert_connection (rpc_connection_tree, c, lrand48 ());
  END_TIMER (connect);
  return c;
}
