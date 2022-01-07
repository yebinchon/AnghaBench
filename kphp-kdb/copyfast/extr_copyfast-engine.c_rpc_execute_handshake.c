
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_handshake {int local_id; int binlog_position; int port; } ;
struct node {int id; int port; int host; } ;
struct connection {int last_response_time; int remote_ip; } ;
struct TYPE_3__ {int handshake_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 TYPE_2__* STATS ;
 int add_parent (struct node,struct connection*) ;
 int assert (int) ;
 int precise_now ;
 int rpc_send_handshake_accept (struct connection*,int ) ;
 int update_relatives_binlog_position (int ,int ) ;
 int vkprintf (int,char*,int ,int) ;

int rpc_execute_handshake (struct connection *c, struct rpc_handshake *P, int len) {
  vkprintf (2, "rpc_execute_handshake: remote_id = %lld, len = %d\n", P->local_id, len);
  if (len != sizeof (struct rpc_handshake)) {
    return 0;
  }
  struct node node;
  node.host = c->remote_ip;
  node.port = P->port;
  node.id = P->local_id;
  add_parent (node, c);
  assert (update_relatives_binlog_position (P->local_id, P->binlog_position) >= 1);
  c->last_response_time = precise_now;
  STATS->structured.handshake_received ++;
  return rpc_send_handshake_accept (c, P->local_id);
}
