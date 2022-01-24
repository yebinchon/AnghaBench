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
struct tcp_rpc_nonce_packet {int crypto_schema; scalar_t__ crypto_ts; int /*<<< orphan*/  key_select; } ;
struct tcp_rpc_data {int packet_num; scalar_t__ packet_type; int packet_len; int crypto_flags; scalar_t__ nonce_time; } ;
struct raw_message {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int (* rpc_init_crypto ) (struct connection*,struct tcp_rpc_nonce_packet*) ;} ;

/* Variables and functions */
#define  RPC_CRYPTO_AES 129 
#define  RPC_CRYPTO_NONE 128 
 scalar_t__ RPC_NONCE ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 struct tcp_rpc_data* FUNC1 (struct connection*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct raw_message*,struct tcp_rpc_nonce_packet*,int) ; 
 int FUNC6 (struct connection*,struct tcp_rpc_nonce_packet*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8 (struct connection *c, struct raw_message *msg) {
  struct tcp_rpc_data *D = FUNC1(c);
  static struct tcp_rpc_nonce_packet P;
  int res;

  if (D->packet_num != -2 || D->packet_type != RPC_NONCE) {
    return -2;
  }
  if (D->packet_len != sizeof (struct tcp_rpc_nonce_packet)) {
    return -3;
  }

  FUNC3 (FUNC5 (msg, &P, D->packet_len) == D->packet_len);
  switch (P.crypto_schema) {
  case RPC_CRYPTO_NONE:
    if (P.key_select) {
      return -3;
    }
    if (D->crypto_flags & 1) {
      D->crypto_flags = 1;
    } else {
      return -5;
    }
    break;
  case RPC_CRYPTO_AES:
    if (!P.key_select || P.key_select != FUNC4 ()) {
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
    D->nonce_time = FUNC7 (0);
    if (FUNC2 (P.crypto_ts - D->nonce_time) > 30) {
      return -6;        //less'om
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
  res = FUNC0(c)->rpc_init_crypto (c, &P);
  if (res < 0) {
    return -6;
  }
  return 0;
}