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
struct rpc_nonce_packet {int len; int seq_num; int /*<<< orphan*/  crc32; int /*<<< orphan*/  crypto_schema; int /*<<< orphan*/  type; } ;
struct connection {int /*<<< orphan*/  Out; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int crypto_flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  RPC_CRYPTO_NONE ; 
 int /*<<< orphan*/  RPC_NONCE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_nonce_packet*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_nonce_packet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_nonce_packet*,int) ; 

int FUNC5 (struct connection *c) {
  if (!(FUNC0(c)->crypto_flags & 1)) {
    return -1;
  }

  static struct rpc_nonce_packet buf;
  FUNC3 (&buf, 0, sizeof (buf));
  buf.len = sizeof (buf);
  buf.seq_num = -2;
  buf.type = RPC_NONCE;
  buf.crypto_schema = RPC_CRYPTO_NONE;
  buf.crc32 = FUNC2 (&buf, sizeof (buf) - 4);

  FUNC4 (&c->Out, &buf, sizeof (buf));

  FUNC1 ((FUNC0(c)->crypto_flags & 14) == 0);
  FUNC0(c)->crypto_flags |= 4;
 
  return 1;
}