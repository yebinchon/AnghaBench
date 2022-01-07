
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_binlog_data {long long remote_id; long long binlog_position; int size; int crc64; int data; int local_id; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int* total_sent_bytes_color; int binlog_data_sent; int * total_sent_num_color; } ;
struct TYPE_6__ {TYPE_1__ structured; } ;
struct TYPE_5__ {int link_color; } ;


 long long BINLOG_POSITION ;
 long long MAX_SEND_LEN ;
 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_BINLOG_DATA ;
 TYPE_3__* STATS ;
 int assert (int) ;
 scalar_t__ get_binlog_data (int ,long long,int) ;
 int get_crc64 (long long) ;
 TYPE_2__* get_relative_by_id (long long) ;
 scalar_t__ rpc_create_query (struct rpc_binlog_data*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_binlog_data*,struct connection*) ;
 int vkprintf (int,char*,long long,long long) ;

int rpc_send_binlog_data (struct connection *c, long long remote_id, long long pos) {
  vkprintf (2, "rpc_send_binlog_data: remote_id = %lld, pos = %lld\n", remote_id, pos);
  if (!remote_id) {
    return 0;
  }
  assert (pos < BINLOG_POSITION);
  int len = (BINLOG_POSITION - pos > MAX_SEND_LEN) ? MAX_SEND_LEN : BINLOG_POSITION - pos;
  struct rpc_binlog_data *T = (struct rpc_binlog_data *)Q;
  int llen = (len & 3) == 0 ? len : (len & ~3) + 4;
  assert (llen <= MAX_SEND_LEN);
  if (rpc_create_query (T, sizeof (struct rpc_binlog_data) + llen, c, RPC_TYPE_BINLOG_DATA) < 0) {
    return -1;
  }
  T->local_id = NODE_ID;
  T->remote_id = remote_id;
  T->binlog_position = pos;
  T->size = len;
  if (get_binlog_data (T->data, pos, len) < 0) {
    return 0;
  }
  T->crc64 = get_crc64 (pos);
  int color = get_relative_by_id (remote_id)->link_color;
  assert (0 <= color && color <= 2);
  STATS->structured.total_sent_num_color[color] ++;
  STATS->structured.total_sent_bytes_color[color] += len;
  STATS->structured.binlog_data_sent ++;
  return rpc_send_query (T, c);
}
