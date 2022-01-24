#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_server {int dummy; } ;
struct rpc_nonce {int /*<<< orphan*/  crypto_schema; int /*<<< orphan*/  key_select; } ;
typedef  int /*<<< orphan*/  S ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_NONCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rpc_nonce*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outbuf ; 
 int FUNC4 (struct rpc_server*,double) ; 
 scalar_t__ FUNC5 (struct rpc_server*,int /*<<< orphan*/ ,double) ; 

__attribute__((used)) static int FUNC6 (struct rpc_server *server, double timeout) { /* {{{ */
  struct rpc_nonce S = {
    .key_select = 0,
    .crypto_schema = 0
  };
  
  //server->outbuf = buffer_create (sizeof (S));
  FUNC0 (outbuf);
  FUNC1 (outbuf);
  FUNC3 (outbuf, 12);
  FUNC2 (outbuf, &S, sizeof (S));
  if (FUNC5 (server, RPC_NONCE, timeout) < 0) {
    return -1;
  }
  return FUNC4 (server, timeout);
}