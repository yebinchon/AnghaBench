#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpcc_data {int packet_num; scalar_t__ packet_type; int packet_len; int crypto_flags; scalar_t__ nonce_time; } ;
struct rpc_nonce_packet {int crypto_schema; int /*<<< orphan*/  key_select; int /*<<< orphan*/  crypto_nonce; scalar_t__ crypto_ts; } ;
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  In; } ;
struct TYPE_2__ {int (* rpc_start_crypto ) (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct rpcc_data* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
#define  RPC_CRYPTO_AES 129 
#define  RPC_CRYPTO_NONE 128 
 scalar_t__ RPC_NONCE ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,struct rpc_nonce_packet*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int,...) ; 

__attribute__((used)) static int FUNC9 (struct connection *c) {
  struct rpcc_data *D = FUNC0(c);
  static struct rpc_nonce_packet P;
  int res;

  if (D->packet_num != -2 || D->packet_type != RPC_NONCE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct rpc_nonce_packet)) {
    return -3;
  }
  FUNC3 (FUNC5 (&c->In, &P, D->packet_len) == D->packet_len);

  FUNC8 (2, "Processing nonce packet, crypto schema: %d, key select: %d\n", P.crypto_schema, P.key_select);

  switch (P.crypto_schema) {
  case RPC_CRYPTO_NONE:
    if (P.key_select) {
      return -3;
    }
    if (D->crypto_flags & 1) {
      #ifdef AES
      if (D->crypto_flags & 2) {
        release_all_unprocessed (&c->Out);
      }
      #endif
      D->crypto_flags = 1;
    } else {
      return -5;
    }
    break;
#ifdef AES
  case RPC_CRYPTO_AES:
    if (!P.key_select || P.key_select != get_crypto_key_id ()) {
      return -3;
    }
    if (!(D->crypto_flags & 2)) {
      return -5;
    }
    if (abs (P.crypto_ts - D->nonce_time) > 30) {
      return -6;	//less'om
    }
    res = RPCC_FUNC(c)->rpc_start_crypto (c, P.crypto_nonce, P.key_select);
    if (res < 0) {
      return -6;
    }
    break;
#endif
  default:
    return -4;
  }
  FUNC8 (2, "Processed nonce packet, crypto flags = %d\n", D->crypto_flags);
  return 0;
}