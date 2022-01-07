
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_handshake_accept {long long remote_id; int binlog_position; int local_id; } ;
struct connection {int last_response_time; } ;
struct TYPE_3__ {int handshake_accept_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int BINLOG_POSITION ;
 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_HANDSHAKE_ACCEPT ;
 TYPE_2__* STATS ;
 int precise_now ;
 scalar_t__ rpc_create_query (struct rpc_handshake_accept*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_handshake_accept*,struct connection*) ;
 int vkprintf (int,char*,long long) ;

int rpc_send_handshake_accept (struct connection *c, long long remote_id) {
  vkprintf (2, "rpc_send_handshake_accept: remote_id = %lld\n", remote_id);
  if (!remote_id) {
    return 0;
  }
  struct rpc_handshake_accept *T = (struct rpc_handshake_accept *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_handshake_accept), c, RPC_TYPE_HANDSHAKE_ACCEPT) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = BINLOG_POSITION;
  c->last_response_time = precise_now;
  STATS->structured.handshake_accept_sent ++;
  return rpc_send_query (T, c);
}
