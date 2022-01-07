
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcs_data {int packet_num; scalar_t__ packet_type; int packet_len; int crypto_flags; scalar_t__ nonce_time; } ;
struct rpc_nonce_packet {int crypto_schema; scalar_t__ crypto_ts; int key_select; } ;
struct connection {int In; } ;
struct TYPE_2__ {int (* rpc_init_crypto ) (struct connection*,struct rpc_nonce_packet*) ;} ;


 struct rpcs_data* RPCS_DATA (struct connection*) ;
 TYPE_1__* RPCS_FUNC (struct connection*) ;


 scalar_t__ RPC_NONCE ;
 int abs (scalar_t__) ;
 int assert (int) ;
 int get_crypto_key_id () ;
 int read_in (int *,struct rpc_nonce_packet*,int) ;
 int stub1 (struct connection*,struct rpc_nonce_packet*) ;
 scalar_t__ time (int ) ;

__attribute__((used)) static int rpcs_process_nonce_packet (struct connection *c) {
  struct rpcs_data *D = RPCS_DATA(c);
  static struct rpc_nonce_packet P;
  int res;

  if (D->packet_num != -2 || D->packet_type != RPC_NONCE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct rpc_nonce_packet)) {
    return -3;
  }
  assert (read_in (&c->In, &P, D->packet_len) == D->packet_len);
  switch (P.crypto_schema) {
  case 128:
    if (P.key_select) {
      return -3;
    }
    if (D->crypto_flags & 1) {
      D->crypto_flags = 1;
    } else {
      return -5;
    }
    break;
  default:
    if (D->crypto_flags & 1) {
      D->crypto_flags = 1;
      break;
    }
    return -4;
  }
  res = RPCS_FUNC(c)->rpc_init_crypto (c, &P);
  if (res < 0) {
    return -6;
  }
  return 0;
}
