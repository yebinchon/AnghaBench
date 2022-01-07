
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_nonce_packet {int len; int seq_num; int crc32; int crypto_schema; int type; } ;
struct connection {int Out; } ;
typedef int buf ;
struct TYPE_2__ {int crypto_flags; } ;


 TYPE_1__* RPCS_DATA (struct connection*) ;
 int RPC_CRYPTO_NONE ;
 int RPC_NONCE ;
 int assert (int) ;
 int compute_crc32 (struct rpc_nonce_packet*,int) ;
 int memset (struct rpc_nonce_packet*,int ,int) ;
 int write_out (int *,struct rpc_nonce_packet*,int) ;

int rpcs_init_fake_crypto (struct connection *c) {
  if (!(RPCS_DATA(c)->crypto_flags & 1)) {
    return -1;
  }

  static struct rpc_nonce_packet buf;
  memset (&buf, 0, sizeof (buf));
  buf.len = sizeof (buf);
  buf.seq_num = -2;
  buf.type = RPC_NONCE;
  buf.crypto_schema = RPC_CRYPTO_NONE;
  buf.crc32 = compute_crc32 (&buf, sizeof (buf) - 4);

  write_out (&c->Out, &buf, sizeof (buf));

  assert ((RPCS_DATA(c)->crypto_flags & 14) == 0);
  RPCS_DATA(c)->crypto_flags |= 4;

  return 1;
}
