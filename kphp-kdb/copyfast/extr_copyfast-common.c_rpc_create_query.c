
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int out_packet_num; } ;


 int MAX_PACKET_LEN ;
 TYPE_1__* RPCS_DATA (struct connection*) ;
 int assert (int) ;
 scalar_t__ cr_ok ;
 int fprintf (int ,char*,...) ;
 scalar_t__ server_check_ready (struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_create_query (void *_R, int len, struct connection *c, int op) {
  if (verbosity >= 4) {
    fprintf (stderr, "creating query... len = %d, op = %x\n", len, op);
  }
  assert (len <= MAX_PACKET_LEN && len >= 16);
  if (!c || server_check_ready (c) != cr_ok) {
    if (verbosity >= 4) {
      fprintf (stderr, "not_created: connection_failedn\n");
    }
    return -1;
  }
  int *R = _R;
  R[0] = len;
  R[1] = RPCS_DATA(c)->out_packet_num ++;
  R[2] = op;
  return 0;
}
