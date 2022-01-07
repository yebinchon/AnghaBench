
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpcc_data {int packet_num; scalar_t__ packet_type; int packet_len; int crypto_flags; scalar_t__ nonce_time; } ;
struct rpc_nonce_packet {int crypto_schema; int key_select; int crypto_nonce; scalar_t__ crypto_ts; } ;
struct connection {int Out; int In; } ;
struct TYPE_2__ {int (* rpc_start_crypto ) (struct connection*,int ,int ) ;} ;


 struct rpcc_data* RPCC_DATA (struct connection*) ;
 TYPE_1__* RPCC_FUNC (struct connection*) ;


 scalar_t__ RPC_NONCE ;
 int abs (scalar_t__) ;
 int assert (int) ;
 int get_crypto_key_id () ;
 int read_in (int *,struct rpc_nonce_packet*,int) ;
 int release_all_unprocessed (int *) ;
 int stub1 (struct connection*,int ,int ) ;
 int vkprintf (int,char*,int,...) ;

__attribute__((used)) static int rpcc_process_nonce_packet (struct connection *c) {
  struct rpcc_data *D = RPCC_DATA(c);
  static struct rpc_nonce_packet P;
  int res;

  if (D->packet_num != -2 || D->packet_type != RPC_NONCE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct rpc_nonce_packet)) {
    return -3;
  }
  assert (read_in (&c->In, &P, D->packet_len) == D->packet_len);

  vkprintf (2, "Processing nonce packet, crypto schema: %d, key select: %d\n", P.crypto_schema, P.key_select);

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
    return -4;
  }
  vkprintf (2, "Processed nonce packet, crypto flags = %d\n", D->crypto_flags);
  return 0;
}
