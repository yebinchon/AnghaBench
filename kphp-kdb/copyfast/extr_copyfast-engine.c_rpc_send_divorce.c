
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_divorce {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int divorce_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 scalar_t__ Q ;
 int RPC_TYPE_DIVORCE ;
 TYPE_2__* STATS ;
 int fprintf (int ,char*) ;
 scalar_t__ rpc_create_query (struct rpc_divorce*,int,struct connection*,int ) ;
 int rpc_send_query (struct rpc_divorce*,struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_send_divorce (struct connection *c) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_send_divorce\n");
  }
  struct rpc_divorce *T = (struct rpc_divorce *)Q;
  if (rpc_create_query (T, sizeof (struct rpc_divorce), c, RPC_TYPE_DIVORCE) < 0) {
    return -1;
  }
  STATS->structured.divorce_sent ++;
  return rpc_send_query (T, c);
}
