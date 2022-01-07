
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_kicked {int dummy; } ;
struct rpc_delays {int medium_delay; int slow_delay; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int delays_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 int MEDIUM_REQUEST_DELAY ;
 int SLOW_REQUEST_DELAY ;
 TYPE_2__* STATS ;
 int vkprintf (int,char*,int) ;

int rpc_execute_delays (struct connection *c, struct rpc_delays *P, int len) {
  vkprintf (2, "rpc_delays: len = %d\n", len);

  if (len != sizeof (struct rpc_kicked)) {
    return 0;
  }
  STATS->structured.delays_received ++;
  SLOW_REQUEST_DELAY = P->slow_delay;
  MEDIUM_REQUEST_DELAY = P->medium_delay;
  return 0;
}
