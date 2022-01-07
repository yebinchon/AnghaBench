
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_kicked {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int kicked_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int CLUSTER_ID ;
 int NODE_ID ;
 TYPE_2__* STATS ;
 int clear_all_children_connections () ;
 int rpc_send_join (struct connection*) ;
 int vkprintf (int,char*,int) ;

int rpc_execute_kicked (struct connection *c, struct rpc_kicked *P, int len) {
  vkprintf (2, "rpc_kicked: len = %d\n", len);
  if (len != sizeof (struct rpc_kicked)) {
    return 0;
  }
  STATS->structured.kicked_received ++;
  NODE_ID = CLUSTER_ID;
  clear_all_children_connections ();
  return rpc_send_join (c);
}
