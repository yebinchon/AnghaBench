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
struct rpc_server {scalar_t__ status; scalar_t__ sfd; double timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 double precise_now ; 
 scalar_t__ FUNC1 (struct rpc_server*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_server*) ; 
 scalar_t__ rpc_status_connected ; 
 scalar_t__ FUNC3 (struct rpc_server*,int,double) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5 (struct rpc_server *server) { /* {{{ */
//  double timeout = 0.1;
  if (server->status != rpc_status_connected || server->sfd < 0) {
    return -1;
  }
  FUNC4 ();
  double t = precise_now + server->timeout;
  if (FUNC1 (server, t, FUNC0 ()) < 0) {
    FUNC2 (server);
    return -1;
  }
  if (FUNC3 (server, 1, t) < 0) {
    FUNC2 (server);
    return -1;
  }
  return 1;
}