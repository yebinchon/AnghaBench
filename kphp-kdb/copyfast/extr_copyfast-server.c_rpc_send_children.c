
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_children_answer {int children_num; long long id; int children; } ;
struct node {int dummy; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_CHILDREN_ANSWER ;
 int children_list ;
 int fprintf (int ,char*) ;
 int generate_children (long long) ;
 int memcpy (int ,int ,int) ;
 int rpc_create_query (struct rpc_children_answer*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_children_answer*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_children (struct connection *c, long long id) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_children\n");
  }
  int x = generate_children (id);
  if (x < 0) {
    return 0;
  }
  struct rpc_children_answer *T = (struct rpc_children_answer *)Q;
  rpc_create_query (T, sizeof (struct rpc_children_answer) + x * sizeof (struct node), c, RPC_TYPE_CHILDREN_ANSWER);
  memcpy (T->children, children_list, x * sizeof (struct node));
  T->children_num = x;
  T->id = id;
  return rpc_send_query (T, c);
}
