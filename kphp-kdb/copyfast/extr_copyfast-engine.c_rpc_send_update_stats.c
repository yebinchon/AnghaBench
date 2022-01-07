
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_update_stats {int stats; int id; } ;
struct long_update_stats {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int update_stats_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_UPDATE_STATS ;
 TYPE_2__* STATS ;
 int UPDATE_STATS ;
 int memcpy (int *,int ,int) ;
 scalar_t__ rpc_create_query (struct rpc_update_stats*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_update_stats*,struct connection*) ;
 int vkprintf (int,char*,struct connection*) ;

int rpc_send_update_stats (struct connection *c) {
  vkprintf (2, "rpc_send_update_stats: c = %p\n", c);
  struct rpc_update_stats *T = (struct rpc_update_stats *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_update_stats), c, RPC_TYPE_UPDATE_STATS) < 0) {
    return -1;
  }
  T->id = NODE_ID;
  memcpy (&T->stats, UPDATE_STATS, sizeof (struct long_update_stats));
  STATS->structured.update_stats_sent++;
  return rpc_send_query (T, c);
}
