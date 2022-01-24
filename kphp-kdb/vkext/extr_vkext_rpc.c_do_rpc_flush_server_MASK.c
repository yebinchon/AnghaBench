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
struct rpc_server {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_flush ; 
 scalar_t__ FUNC3 (struct rpc_server*,double) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_server*) ; 
 scalar_t__ rpc_status_connected ; 

int FUNC5 (struct rpc_server *server, double timeout) { /* {{{ */
  FUNC0 (rpc_flush);
  FUNC2 (rpc_flush);
  if (!server || server->status != rpc_status_connected) {
    FUNC1 (rpc_flush);
    return 0;
  }
  if (FUNC3 (server, timeout) < 0) {
    FUNC4 (server);
    FUNC1 (rpc_flush);
    return -1;
  } else {
    FUNC1 (rpc_flush);
    return 1;
  }
}