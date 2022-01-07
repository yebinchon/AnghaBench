
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_rpc_nonce_packet {int crypto_schema; int type; } ;
struct connection {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int crypto_flags; } ;


 int RPC_CRYPTO_NONE ;
 int RPC_NONCE ;
 TYPE_1__* TCP_RPC_DATA (struct connection*) ;
 int assert (int) ;
 int memset (struct tcp_rpc_nonce_packet*,int ,int) ;
 int tcp_rpc_conn_send_data (struct connection*,int,struct tcp_rpc_nonce_packet*) ;

int tcp_rpcc_init_fake_crypto (struct connection *c) {
  if (!(TCP_RPC_DATA(c)->crypto_flags & 1)) {
    return -1;
  }

  static struct tcp_rpc_nonce_packet buf;
  memset (&buf, 0, sizeof (buf));
  buf.type = RPC_NONCE;
  buf.crypto_schema = RPC_CRYPTO_NONE;

  tcp_rpc_conn_send_data (c, sizeof (buf), &buf);

  assert ((TCP_RPC_DATA(c)->crypto_flags & 14) == 0);
  TCP_RPC_DATA(c)->crypto_flags |= 4;

  return 1;
}
