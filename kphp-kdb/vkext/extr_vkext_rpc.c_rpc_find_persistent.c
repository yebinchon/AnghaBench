
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct rpc_server_collection* x; } ;
typedef TYPE_1__ tree_server_collection_t ;
struct rpc_server_collection {unsigned int host; int port; scalar_t__ num; } ;


 int ADD_PMALLOC (int) ;
 int assert (struct rpc_server_collection*) ;
 int lrand48 () ;
 int server_collection_tree ;
 int tree_insert_server_collection (int ,struct rpc_server_collection*,int ) ;
 TYPE_1__* tree_lookup_server_collection (int ,struct rpc_server_collection*) ;
 struct rpc_server_collection* zzmalloc0 (int) ;

struct rpc_server_collection *rpc_find_persistent (unsigned host, int port, double timeout, double retry_interval) {
  struct rpc_server_collection t;
  t.host = host;
  t.port = port;
  tree_server_collection_t *T = tree_lookup_server_collection (server_collection_tree, &t);
  struct rpc_server_collection *servers;
  if (T) {
    servers = T->x;
  } else {
    servers = zzmalloc0 (sizeof (*servers));
    ADD_PMALLOC (sizeof (*servers));
    assert (servers);
    servers->host = host;
    servers->port = port;
    servers->num = 0;


    server_collection_tree = tree_insert_server_collection (server_collection_tree, servers, lrand48 ());
  }


  return servers;
}
