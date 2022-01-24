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
struct tcp_rpc_nonce_packet {int /*<<< orphan*/  crypto_schema; int /*<<< orphan*/  type; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int crypto_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_CRYPTO_NONE ; 
 int /*<<< orphan*/  RPC_NONCE ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_rpc_nonce_packet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int,struct tcp_rpc_nonce_packet*) ; 

int FUNC4 (struct connection *c) {
  if (!(FUNC0(c)->crypto_flags & 1)) {
    return -1;
  }

  static struct tcp_rpc_nonce_packet buf;
  FUNC2 (&buf, 0, sizeof (buf));
  buf.type = RPC_NONCE;
  buf.crypto_schema = RPC_CRYPTO_NONE;

  FUNC3 (c, sizeof (buf), &buf);
  FUNC1 ((FUNC0(c)->crypto_flags & 14) == 0);
  FUNC0(c)->crypto_flags |= 4;
 
  return 1;
}