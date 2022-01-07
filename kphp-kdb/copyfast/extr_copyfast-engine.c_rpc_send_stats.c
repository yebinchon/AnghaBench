
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union engine_stats {int dummy; } engine_stats ;
struct rpc_stats {int stats; int id; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int stats_sent; } ;
struct TYPE_5__ {TYPE_1__ structured; } ;


 int NODE_ID ;
 scalar_t__ Q ;
 int RPC_TYPE_STATS ;
 TYPE_2__* STATS ;
 int memcpy (int *,TYPE_2__*,int) ;
 scalar_t__ rpc_create_query (struct rpc_stats*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_stats*,struct connection*) ;
 int vkprintf (int,char*,struct connection*) ;

int rpc_send_stats (struct connection *c) {
  vkprintf (2, "rpc_send_stats: c = %p\n", c);
  struct rpc_stats *T = (struct rpc_stats *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_stats), c, RPC_TYPE_STATS) < 0) {
    return -1;
  }
  T->id = NODE_ID;
  memcpy (&T->stats, STATS, sizeof (union engine_stats));
  STATS->structured.stats_sent++;
  return rpc_send_query (T, c);
}
