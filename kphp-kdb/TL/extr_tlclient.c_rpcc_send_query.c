
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int Out; } ;
struct TYPE_4__ {int out_packet_num; } ;
struct TYPE_3__ {int (* flush_packet ) (struct connection*) ;} ;


 int* P ;
 TYPE_2__* RPCC_DATA (struct connection*) ;
 TYPE_1__* RPCC_FUNC (struct connection*) ;
 int RPC_INVOKE_REQ ;
 int additional ;
 int auth_key_id ;
 int compute_crc32 (int*,int) ;
 int dump_rpc_packet (int*) ;
 scalar_t__ expect_input ;
 int fprintf (int ,char*) ;
 int memcpy (int*,int *,int) ;
 int msg_id ;
 int req_id ;
 int session_id ;
 int stderr ;
 int stub1 (struct connection*) ;
 int verbosity ;
 int write_out (int *,int*,int) ;

int rpcc_send_query (struct connection *c, int r) {
  req_id++;
  P[0] = 4 * (r + 6 + additional);
  P[1] = RPCC_DATA(c)->out_packet_num++;
  P[2] = RPC_INVOKE_REQ;
  memcpy (&P[3], &req_id, 8);
  if (additional > 0) {
    memcpy (&P[5], &auth_key_id, 8);
    memcpy (&P[7], &session_id, 8);
    msg_id++;
    memcpy (&P[9], &msg_id, 8);
  }
  P[(P[0]/4)-1] = compute_crc32 (P, P[0] - 4);
  write_out (&c->Out, P, P[0]);
  RPCC_FUNC(c)->flush_packet(c);
  if (verbosity >= 4) {
    fprintf (stderr, "Sending:\n");
    dump_rpc_packet (P);
  }
  expect_input = 0;
  return 0;
}
