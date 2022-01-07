
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int Out; } ;
struct TYPE_2__ {int (* flush_packet ) (struct connection*) ;} ;


 TYPE_1__* RPCS_FUNC (struct connection*) ;
 int assert (int) ;
 int prepare_rpc_query (struct connection*,int*,int) ;
 int stub1 (struct connection*) ;
 int vkprintf (int,char*,int,int,long long) ;
 int write_out (int *,int*,int) ;

void send_rpc_query (struct connection *c, int op, long long id, int *q, int qn) {
  q[2] = op;
  if (id != -1) {
    *(long long *)(q + 3) = id;
  }

  prepare_rpc_query (c, q, qn);

  vkprintf (4, "send_rpc_query: [len = %d] [op = %08x] [rpc_id = <%lld>]\n", q[0], op, id);
  assert (write_out (&c->Out, q, q[0]) == q[0]);

  RPCS_FUNC(c)->flush_packet (c);
}
