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
struct rpc_server {int /*<<< orphan*/  failed; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_server*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_server*) ; 
 int /*<<< orphan*/  rpc_status_disconnected ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3 (struct rpc_server *server) { /* {{{ */
  FUNC1 (server);
  FUNC0 (server);
  server->status = rpc_status_disconnected;
  FUNC2 ();
  server->failed = precise_now;
//  php_error_docref (NULL TSRMLS_CC, E_NOTICE, "Server " IP_PRINT_STR " (tcp %d) [fd = %d] failed with: %s (%d)", IP_TO_PRINT (server->host), server->port, server->fd, server->error, server->errnum);
}