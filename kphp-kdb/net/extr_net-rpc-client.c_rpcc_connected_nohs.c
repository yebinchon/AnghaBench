
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int status; int last_query_sent_time; } ;
struct TYPE_2__ {int (* rpc_ready ) (struct connection*) ;} ;


 TYPE_1__* RPCC_FUNC (struct connection*) ;
 int conn_wait_answer ;
 int precise_now ;
 int stub1 (struct connection*) ;

int rpcc_connected_nohs (struct connection *c) {
  c->last_query_sent_time = precise_now;

  c->status = conn_wait_answer;
  if (RPCC_FUNC(c)->rpc_ready) {
    RPCC_FUNC(c)->rpc_ready (c);
  }

  return 0;
}
