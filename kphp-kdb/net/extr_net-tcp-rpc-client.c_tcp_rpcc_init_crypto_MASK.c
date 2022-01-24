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
struct tcp_rpc_nonce_packet {int /*<<< orphan*/  crypto_schema; int /*<<< orphan*/  key_select; int /*<<< orphan*/  type; int /*<<< orphan*/  crypto_ts; int /*<<< orphan*/  crypto_nonce; } ;
struct connection {int /*<<< orphan*/  crypto; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int crypto_flags; int /*<<< orphan*/  nonce_time; int /*<<< orphan*/  nonce; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_CRYPTO_AES ; 
 int /*<<< orphan*/  RPC_NONCE ; 
 TYPE_1__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_rpc_nonce_packet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,int,struct tcp_rpc_nonce_packet*) ; 
 int FUNC7 (struct connection*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9 (struct connection *c) {
  if (!(FUNC0(c)->crypto_flags & 2)) {
    return FUNC7 (c);
  }

  FUNC0(c)->nonce_time = FUNC8 (0);

  FUNC1 (FUNC0(c)->nonce);

  static struct tcp_rpc_nonce_packet buf;
  FUNC5 (&buf, 0, sizeof (buf));
  FUNC4 (buf.crypto_nonce, FUNC0(c)->nonce, 16);
  buf.crypto_ts = FUNC0(c)->nonce_time;
  buf.type = RPC_NONCE;
  buf.key_select = FUNC3 ();
  buf.crypto_schema = RPC_CRYPTO_AES;

  FUNC6 (c, sizeof (buf), &buf);

  FUNC2 ((FUNC0(c)->crypto_flags & 14) == 2);
  FUNC0(c)->crypto_flags |= 4;

  FUNC2 (!c->crypto);

/*  struct raw_message x;
  assert (!c->out_p.total_bytes);
  x = c->out_p;
  c->out_p = c->out;
  c->out = x;*/

  return 1;
}