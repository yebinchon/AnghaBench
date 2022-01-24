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
struct rpc_handshake_error {int /*<<< orphan*/  error_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_server*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1 (struct rpc_server *server, char *answer, int answer_len) { /* {{{ */
  FUNC0 (server, "Rpc error", ((struct rpc_handshake_error *)answer)->error_code);
  return -1;
}