
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_rpc_nonce_packet {int crypto_schema; scalar_t__ crypto_ts; int key_select; } ;
struct tcp_rpc_data {int packet_num; scalar_t__ packet_type; int packet_len; int crypto_flags; scalar_t__ nonce_time; } ;
struct raw_message {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int (* rpc_init_crypto ) (struct connection*,struct tcp_rpc_nonce_packet*) ;} ;




 scalar_t__ RPC_NONCE ;
 TYPE_1__* TCP_RPCS_FUNC (struct connection*) ;
 struct tcp_rpc_data* TCP_RPC_DATA (struct connection*) ;
 int abs (scalar_t__) ;
 int assert (int) ;
 int get_crypto_key_id () ;
 int rwm_fetch_data (struct raw_message*,struct tcp_rpc_nonce_packet*,int) ;
 int stub1 (struct connection*,struct tcp_rpc_nonce_packet*) ;
 scalar_t__ time (int ) ;

__attribute__((used)) static int tcp_rpcs_process_nonce_packet (struct connection *c, struct raw_message *msg) {
  struct tcp_rpc_data *D = TCP_RPC_DATA(c);
  static struct tcp_rpc_nonce_packet P;
  int res;

  if (D->packet_num != -2 || D->packet_type != RPC_NONCE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct tcp_rpc_nonce_packet)) {
    return -3;
  }

  assert (rwm_fetch_data (msg, &P, D->packet_len) == D->packet_len);
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
  case 129:
    if (!P.key_select || P.key_select != get_crypto_key_id ()) {
      if (D->crypto_flags & 1) {
        D->crypto_flags = 1;
        break;
      }
      return -3;
    }
    if (!(D->crypto_flags & 2)) {
      if (D->crypto_flags & 1) {
        D->crypto_flags = 1;
        break;
      }
      return -5;
    }
    D->nonce_time = time (0);
    if (abs (P.crypto_ts - D->nonce_time) > 30) {
      return -6;
    }
    D->crypto_flags &= -2;
    break;
  default:
    if (D->crypto_flags & 1) {
      D->crypto_flags = 1;
      break;
    }
    return -4;
  }
  res = TCP_RPCS_FUNC(c)->rpc_init_crypto (c, &P);
  if (res < 0) {
    return -6;
  }
  return 0;
}
