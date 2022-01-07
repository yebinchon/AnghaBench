
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_handshake {long long remote_id; int port; int binlog_position; int local_id; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int handshake_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int BINLOG_POSITION ;
 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_HANDSHAKE ;
 TYPE_2__* STATS ;
 long long get_id_by_connection (struct connection*) ;
 int port ;
 scalar_t__ rpc_create_query (struct rpc_handshake*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_handshake*,struct connection*) ;
 int vkprintf (int,char*,long long) ;

int rpc_send_handshake (struct connection *c) {
  long long remote_id = get_id_by_connection (c);
  vkprintf (2, "rpc_send_handshake: remote_id = %lld\n", remote_id);
  if (!remote_id) {
    return 0;
  }
  struct rpc_handshake *T = (struct rpc_handshake *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_handshake), c, RPC_TYPE_HANDSHAKE) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = BINLOG_POSITION;
  T->port = port;
  STATS->structured.handshake_sent ++;
  return rpc_send_query (T, c);
}
