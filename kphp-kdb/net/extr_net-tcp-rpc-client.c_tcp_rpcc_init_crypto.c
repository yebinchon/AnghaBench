
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_rpc_nonce_packet {int crypto_schema; int key_select; int type; int crypto_ts; int crypto_nonce; } ;
struct connection {int crypto; } ;
typedef int buf ;
struct TYPE_2__ {int crypto_flags; int nonce_time; int nonce; } ;


 int RPC_CRYPTO_AES ;
 int RPC_NONCE ;
 TYPE_1__* TCP_RPC_DATA (struct connection*) ;
 int aes_generate_nonce (int ) ;
 int assert (int) ;
 int get_crypto_key_id () ;
 int memcpy (int ,int ,int) ;
 int memset (struct tcp_rpc_nonce_packet*,int ,int) ;
 int tcp_rpc_conn_send_data (struct connection*,int,struct tcp_rpc_nonce_packet*) ;
 int tcp_rpcc_init_fake_crypto (struct connection*) ;
 int time (int ) ;

int tcp_rpcc_init_crypto (struct connection *c) {
  if (!(TCP_RPC_DATA(c)->crypto_flags & 2)) {
    return tcp_rpcc_init_fake_crypto (c);
  }

  TCP_RPC_DATA(c)->nonce_time = time (0);

  aes_generate_nonce (TCP_RPC_DATA(c)->nonce);

  static struct tcp_rpc_nonce_packet buf;
  memset (&buf, 0, sizeof (buf));
  memcpy (buf.crypto_nonce, TCP_RPC_DATA(c)->nonce, 16);
  buf.crypto_ts = TCP_RPC_DATA(c)->nonce_time;
  buf.type = RPC_NONCE;
  buf.key_select = get_crypto_key_id ();
  buf.crypto_schema = RPC_CRYPTO_AES;

  tcp_rpc_conn_send_data (c, sizeof (buf), &buf);

  assert ((TCP_RPC_DATA(c)->crypto_flags & 14) == 2);
  TCP_RPC_DATA(c)->crypto_flags |= 4;

  assert (!c->crypto);







  return 1;
}
