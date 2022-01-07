
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_request_update_stats {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int request_update_stats_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 TYPE_2__* STATS ;
 int rpc_send_update_stats (struct connection*) ;
 int vkprintf (int,char*,int) ;

int rpc_execute_request_update_stats (struct connection *c, struct rpc_request_update_stats *P, int len) {
  vkprintf (2, "rpc_execute_request_update_stats: len = %d\n", len);
  if (len != sizeof (struct rpc_request_update_stats)) {
    return 0;
  }
  STATS->structured.request_update_stats_received ++;
  return rpc_send_update_stats (c);
}
