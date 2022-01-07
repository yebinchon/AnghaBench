
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_children_answer_old {int children_num; int children; } ;
struct node {int dummy; } ;
struct connection {int dummy; } ;


 scalar_t__ Q ;
 int RPC_TYPE_CHILDREN_ANSWER_OLD ;
 int children_list ;
 int fprintf (int ,char*) ;
 int generate_children (long long) ;
 int memcpy (int ,int ,int) ;
 int rpc_create_query (struct rpc_children_answer_old*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_children_answer_old*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_children_old (struct connection *c, long long id) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_children_old\n");
  }
  int x = generate_children (id);
  if (x < 0) {
    return 0;
  }
  struct rpc_children_answer_old *T = (struct rpc_children_answer_old *)Q;
  rpc_create_query (T, sizeof (struct rpc_children_answer_old) + x * sizeof (struct node), c, RPC_TYPE_CHILDREN_ANSWER_OLD);
  memcpy (T->children, children_list, x * sizeof (struct node));
  T->children_num = x;
  return rpc_send_query (T, c);
}
