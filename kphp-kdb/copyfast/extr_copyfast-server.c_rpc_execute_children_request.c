
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_children_request {int id; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ protocol_version; } ;


 int fprintf (int ,char*,int) ;
 int get_node_idx (int ) ;
 TYPE_1__* nodes ;
 int rpc_send_children (struct connection*,int ) ;
 int rpc_send_children_old (struct connection*,int ) ;
 int stderr ;
 int verbosity ;

int rpc_execute_children_request (struct connection *c, struct rpc_children_request *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_children_request: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_children_request)) {
    return 0;
  }
  int x = get_node_idx (P->id);
  if (nodes[x].protocol_version == 0) {
    return rpc_send_children_old (c, P->id);
  } else {
    return rpc_send_children (c, P->id);
  }
}
