
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_children_request {int id; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int children_requests_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_CHILDREN_REQUEST ;
 TYPE_2__* STATS ;
 scalar_t__ rpc_create_query (struct rpc_children_request*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_children_request*,struct connection*) ;
 int vkprintf (int,char*,struct connection*) ;

int rpc_send_children_request (struct connection *c) {
  vkprintf (2, "rpc_send_children_request: c = %p\n", c);
  struct rpc_children_request *T = (struct rpc_children_request *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_children_request), c, RPC_TYPE_CHILDREN_REQUEST) < 0) {
    return -1;
  }
  T->id = NODE_ID;
  STATS->structured.children_requests_sent ++;
  return rpc_send_query (T, c);
}
