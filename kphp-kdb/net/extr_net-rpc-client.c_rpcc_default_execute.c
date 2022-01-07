
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int Out; int fd; int In; int last_response_time; } ;
struct TYPE_4__ {int out_packet_num; } ;
struct TYPE_3__ {int (* flush_packet ) (struct connection*) ;} ;


 TYPE_2__* RPCC_DATA (struct connection*) ;
 TYPE_1__* RPCC_FUNC (struct connection*) ;
 int RPC_PING ;
 int RPC_PONG ;
 int SKIP_ALL_BYTES ;
 int assert (int) ;
 int compute_crc32 (int*,int) ;
 int precise_now ;
 int read_in (int *,int*,int) ;
 int stub1 (struct connection*) ;
 int vkprintf (int,char*,int ,long long,...) ;
 int write_out (int *,int*,int) ;

int rpcc_default_execute (struct connection *c, int op, int len) {
  vkprintf (1, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);
  if (op == RPC_PING && len == 24) {
    c->last_response_time = precise_now;
    static int Q[12];
    assert (read_in (&c->In, Q, 24) == 24);
    static int P[12];
    P[0] = 24;
    P[1] = RPCC_DATA(c)->out_packet_num++;
    P[2] = RPC_PONG;
    P[3] = Q[3];
    P[4] = Q[4];
    P[5] = compute_crc32 (P, 20);
    vkprintf (1, "Received ping from fd=%d. ping_id = %lld. Sending pong\n", c->fd, *(long long *)(Q + 3));
    write_out (&c->Out, P, 24);
    RPCC_FUNC(c)->flush_packet(c);
    return 24;
  }
  return SKIP_ALL_BYTES;
}
