
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_binlog_info {long long remote_id; int binlog_position; int local_id; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int binlog_info_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int BINLOG_POSITION ;
 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_BINLOG_INFO ;
 TYPE_2__* STATS ;
 scalar_t__ rpc_create_query (struct rpc_binlog_info*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_binlog_info*,struct connection*) ;
 int vkprintf (int,char*,long long) ;

int rpc_send_binlog_info (struct connection *c, long long remote_id) {
  vkprintf (2, "rpc_send_binlog_info: remote_id = %lld\n", remote_id);
  if (!remote_id) {
    return 0;
  }
  struct rpc_binlog_info *T = (struct rpc_binlog_info *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_binlog_info), c, RPC_TYPE_BINLOG_INFO) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = BINLOG_POSITION;
  STATS->structured.binlog_info_sent ++;
  return rpc_send_query (T, c);
}
